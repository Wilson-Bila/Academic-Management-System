/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CursoDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Curso;

/**
 *
 * @author BILA
 */
@WebServlet(name="/CursoController")
public class CursoController extends HttpServlet {

    private CursoDAO cursoDAO = new CursoDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            response.sendRedirect("Curso.jsp");
            return;
        }

        switch (action) {
            case "create":
                criarCurso(request, response);
                break;
            case "read":
                lerCurso(request, response);
                break;
            case "update":
                atualizarCurso(request, response);
                break;
            case "delete":
                deletarCurso(request, response);
                break;
            case "listAll":
                listarCursos();
                break;
            default:
                response.sendRedirect("Curso.jsp");
        }
    }

    private void criarCurso(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("courseName");

        Curso existingCurso = cursoDAO.getCursoByNome(nome);
        if (existingCurso != null) {
            request.setAttribute("error", "Curso já existente...");
        } else {
            Curso curso = new Curso(nome);
            cursoDAO.create(curso);
            request.setAttribute("success", "Curso cadastrado com sucesso!");
        }
        request.getRequestDispatcher("/Curso.jsp").forward(request, response);
    }

    private void lerCurso(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        Curso curso = cursoDAO.read(id);
        if (curso == null) {
            request.setAttribute("error", "Curso não encontrado.");
        } else {
            request.setAttribute("curso", curso);
            request.setAttribute("success", "Curso encontrado.");
        }
        request.getRequestDispatcher("Curso.jsp").forward(request, response);
    }

    private void atualizarCurso(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("courseName");
        Curso curso = cursoDAO.read(id);
        if (curso == null) {
            request.setAttribute("error", "Curso não encontrado");
        } else {
            curso.setNome(nome);
            cursoDAO.update(curso);
            request.setAttribute("success", "Curso actualizado com sucesso!");
        }
        request.getRequestDispatcher("Curso.jsp").forward(request, response);
    }

    private void deletarCurso(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        Curso curso = cursoDAO.read(id);
        if (curso == null) {
            request.setAttribute("error", "Curso não encontrado.");
        } else {
            cursoDAO.delete(id);
            request.setAttribute("success", "Curso removido com sucesso!");
        }
        request.getRequestDispatcher("Curso.jsp").forward(request, response);
    }

    public List<Curso> listarCursos() {
        return cursoDAO.listAll();
    }
}
