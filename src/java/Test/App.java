
package Test;

import dao.CursoDAO;
import java.util.List;
import java.util.Scanner;
import model.Curso;

/**
 *
 * @author BILA
 */
public class App {
   private static final CursoDAO cursoDAO = new CursoDAO();
    private static final Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        int escolha;
        do {
            System.out.println("Menu:");
            System.out.println("1. Criar Curso");
            System.out.println("2. Ler Curso por ID");
            System.out.println("3. Atualizar Curso");
            System.out.println("4. Deletar Curso");
            System.out.println("5. Listar Todos os Cursos");
            System.out.println("6. Buscar Curso por Nome");
            System.out.println("0. Sair");
            System.out.print("Escolha uma opção: ");
            escolha = scanner.nextInt();
            scanner.nextLine(); // Limpar o buffer do scanner

            switch (escolha) {
                case 1:
                    criarCurso();
                    break;
                case 2:
                    lerCursoPorId();
                    break;
                case 3:
                    atualizarCurso();
                    break;
                case 4:
                    deletarCurso();
                    break;
                case 5:
                    listarTodosCursos();
                    break;
                case 6:
                    buscarCursoPorNome();
                    break;
                case 0:
                    System.out.println("Encerrando o programa...");
                    break;
                default:
                    System.out.println("Opção inválida.");
            }
        } while (escolha != 0);

        scanner.close();
    }

    private static void criarCurso() {
        System.out.print("Digite o nome do curso: ");
        String nome = scanner.nextLine();
        Curso curso = new Curso();
        curso.setNome(nome);
        cursoDAO.create(curso);
    }

    private static void lerCursoPorId() {
        System.out.print("Digite o ID do curso: ");
        int id = scanner.nextInt();
        Curso curso = cursoDAO.read(id);
        if (curso != null) {
            System.out.println(curso);
        } else {
            System.out.println("Curso não encontrado.");
        }
    }

    private static void atualizarCurso() {
        System.out.print("Digite o ID do curso que deseja atualizar: ");
        int id = scanner.nextInt();
        scanner.nextLine(); // Limpar o buffer do scanner
        Curso curso = cursoDAO.read(id);
        if (curso != null) {
            System.out.print("Digite o novo nome do curso: ");
            String novoNome = scanner.nextLine();
            curso.setNome(novoNome);
            cursoDAO.update(curso);
        } else {
            System.out.println("Curso não encontrado.");
        }
    }

    private static void deletarCurso() {
        System.out.print("Digite o ID do curso que deseja deletar: ");
        int id = scanner.nextInt();
        cursoDAO.delete(id);
    }

    private static void listarTodosCursos() {
        List<Curso> cursos = cursoDAO.listAll();
        if (cursos != null) {
            System.out.println("Todos os Cursos:");
            for (Curso curso : cursos) {
                System.out.println(curso);
            }
        } else {
            System.out.println("Nenhum curso encontrado.");
        }
    }

    private static void buscarCursoPorNome() {
        System.out.print("Digite o nome do curso que deseja buscar: ");
        String nome = scanner.nextLine();
        Curso curso = cursoDAO.getCursoByNome(nome);
        if (curso != null) {
            System.out.println(curso);
        } else {
            System.out.println("Curso não encontrado.");
        }
    }
}