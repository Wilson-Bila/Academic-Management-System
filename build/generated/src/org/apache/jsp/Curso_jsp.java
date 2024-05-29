package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Curso;
import java.util.List;
import controller.CursoController;

public final class Curso_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"pt-pt\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>ISCIM-Curso</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" media=\"screen\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<header>\n");
      out.write("    <nav class=\"navbar navbar-expand-lg\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div>\n");
      out.write("                <a href=\"Inicio.jsp\"><img src=\"imagens/Voltar.jpg\" class=\"img-thumbnail\" alt=\"Back\"></a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n");
      out.write("                <ul class=\"navbar-nav ms-auto\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link active\" aria-current=\"page\" href=\"Curso.jsp\" style=\"color: #fff;\">Curso</a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("</header>\n");
      out.write("<section class=\"container mt-5\">\n");
      out.write("    <hr>\n");
      out.write("    ");
      out.write("\n");
      out.write("    ");

        String successMessage = (String) request.getAttribute("success");
        String errorMessage = (String) request.getAttribute("error");
        if (successMessage != null) {
    
      out.write("\n");
      out.write("    <div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">\n");
      out.write("        ");
      out.print( successMessage );
      out.write("\n");
      out.write("        <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\n");
      out.write("    </div>\n");
      out.write("    ");

        }
        if (errorMessage != null) {
    
      out.write("\n");
      out.write("    <div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\">\n");
      out.write("        ");
      out.print( errorMessage );
      out.write("\n");
      out.write("        <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\n");
      out.write("    </div>\n");
      out.write("    ");

        }
    
      out.write("\n");
      out.write("    <div class=\"row align-items-center\">\n");
      out.write("        <div class=\"col-md-4 text-center\">\n");
      out.write("            <img src=\"imagens/Curso.jpg\" class=\"rounded resized-image\" alt=\"LogoCurso\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-8\">\n");
      out.write("            <div class=\"form-container\">\n");
      out.write("                <h2 class=\"form-title\">Informações do Curso</h2>\n");
      out.write("                <form class=\"row g-3 needs-validation\" novalidate action=\"CursoController\" method=\"post\">\n");
      out.write("                    <input type=\"hidden\" id=\"courseId\" name=\"id\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <label for=\"courseName\" class=\"form-label\">Nome</label>\n");
      out.write("                        <input type=\"text\" name=\"courseName\" class=\"form-control\" id=\"courseName\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-12 d-flex justify-content-center\">\n");
      out.write("                        <button class=\"btn btn-primary me-2\" type=\"submit\" name=\"action\" value=\"create\">Cadastrar</button>\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-success me-2\" name=\"action\" value=\"update\" style=\"margin-left: 5%\">Actualizar</button>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <br> <hr>\n");
      out.write("    <div class=\"container mt-5\">\n");
      out.write("        <h2 class=\"mb-4\">Lista de Cursos</h2>\n");
      out.write("        <table class=\"table table-striped table-hover\">\n");
      out.write("            <thead>\n");
      out.write("            <tr>\n");
      out.write("                <th>ID do Curso</th>\n");
      out.write("                <th>Nome do Curso</th>\n");
      out.write("                <th>Acções</th>\n");
      out.write("            </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("            ");

                CursoController cursoController = new CursoController();
                List<Curso> cursos = cursoController.listarCursos();
                for (Curso curso : cursos) {
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(curso.getId());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(curso.getNome());
      out.write("</td>\n");
      out.write("                <td>\n");
      out.write("                    <button class=\"btn btn-success me-2\" style=\"width: 20%\" onclick=\"populateUpdateForm('");
      out.print(curso.getId());
      out.write("', '");
      out.print(curso.getNome());
      out.write("')\">\n");
      out.write("                        <i class=\"bi bi-pencil-square\"></i>\n");
      out.write("                    </button>\n");
      out.write("                    <form action=\"CursoController\" method=\"post\" style=\"display:inline;\" onsubmit=\"return confirmDelete(this);\">\n");
      out.write("                        <input type=\"hidden\" name=\"id\" value=\"");
      out.print( curso.getId() );
      out.write("\">\n");
      out.write("                        <button class=\"btn btn-danger me-2\" type=\"submit\" name=\"action\" value=\"delete\" style=\"width: 20%\">\n");
      out.write("                            <i class=\"bi bi-trash\"></i>\n");
      out.write("                        </button>\n");
      out.write("                    </form>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("<!-- Adicione o link para o ícone do Bootstrap -->\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css\">\n");
      out.write("\n");
      out.write("<!-- JavaScript para preencher o formulário de atualização -->\n");
      out.write("<script>\n");
      out.write("    function populateUpdateForm(id, name) {\n");
      out.write("        document.getElementById('courseId').value = id;\n");
      out.write("        document.getElementById('courseName').value = name;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    function confirmDelete(form) {\n");
      out.write("        return confirm('Você realmente deseja excluir este curso?');\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
