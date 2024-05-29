<%-- 
    Document   : Curso
    Created on : 25/05/2024, 19:32:02
    Author     : Wilson BILA
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Curso"%>
<%@page import="java.util.List"%>
<%@page import="controller.CursoController"%>
<!DOCTYPE html>
<html lang="pt-pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISCIM-Curso</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="css/style.css" media="screen">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <div>
                <a href="Inicio.jsp"><img src="imagens/Voltar.jpg" class="img-thumbnail" alt="Back"></a>
            </div>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="Curso.jsp" style="color: #fff;">Curso</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<section class="container mt-5">
    <hr>
    <%-- Exibir mensagens de sucesso ou erro --%>
    <%
        String successMessage = (String) request.getAttribute("success");
        String errorMessage = (String) request.getAttribute("error");
        if (successMessage != null) {
    %>
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        <%= successMessage %>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <%
        }
        if (errorMessage != null) {
    %>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <%= errorMessage %>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <%
        }
    %>
    <div class="row align-items-center">
        <div class="col-md-4 text-center">
            <img src="imagens/Curso.jpg" class="rounded resized-image" alt="LogoCurso">
        </div>
        <div class="col-md-8">
            <div class="form-container">
                <h2 class="form-title">Informações do Curso</h2>
                <form class="row g-3 needs-validation" novalidate action="CursoController" method="post">
                    <input type="hidden" id="courseId" name="id">
                    <div class="col-md-6">
                        <label for="courseName" class="form-label">Nome</label>
                        <input type="text" name="courseName" class="form-control" id="courseName" required>
                    </div>
                    <div class="col-12 d-flex justify-content-center">
                        <button class="btn btn-primary me-2" type="submit" name="action" value="create">Cadastrar</button>
                        <button type="submit" class="btn btn-success me-2" name="action" value="update" style="margin-left: 5%">Actualizar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <br> <hr>
    <div class="container mt-5">
        <h2 class="mb-4">Lista de Cursos</h2>
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>ID do Curso</th>
                <th>Nome do Curso</th>
                <th>Acções</th>
            </tr>
            </thead>
            <tbody>
            <%
                CursoController cursoController = new CursoController();
                List<Curso> cursos = cursoController.listarCursos();
                for (Curso curso : cursos) {
            %>
            <tr>
                <td><%=curso.getId()%></td>
                <td><%=curso.getNome()%></td>
                <td>
                    <button class="btn btn-success me-2" style="width: 20%" onclick="populateUpdateForm('<%=curso.getId()%>', '<%=curso.getNome()%>')">
                        <i class="bi bi-pencil-square"></i>
                    </button>
                    <form action="CursoController" method="post" style="display:inline;" onsubmit="return confirmDelete(this);">
                        <input type="hidden" name="id" value="<%= curso.getId() %>">
                        <button class="btn btn-danger me-2" type="submit" name="action" value="delete" style="width: 20%">
                            <i class="bi bi-trash"></i>
                        </button>
                    </form>
                </td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>
</section>
<!-- Adicione o link para o ícone do Bootstrap -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">

<!-- JavaScript para preencher o formulário de atualização -->
<script>
    function populateUpdateForm(id, name) {
        document.getElementById('courseId').value = id;
        document.getElementById('courseName').value = name;
    }

    function confirmDelete(form) {
        return confirm('Você realmente deseja excluir este curso?');
    }
</script>
</body>
</html>
