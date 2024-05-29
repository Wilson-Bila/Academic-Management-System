<%-- 
    Document   : Turma
    Created on : 25/05/2024, 19:32:34
    Author     : Wilson BILA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-pt">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ISCIM-Turma</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css" media="screen">
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid">
                    <div>
                        <a href="index.jsp"><img src="imagens/Voltar.jpg" class="img-thumbnail" alt="Back"></a> 
                    </div>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="Turma.jsp" style="color: #fff;">Turma</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <section class="container mt-5">
            <hr>
            <div class="row align-items-center">
                <div class="col-md-4 text-center">
                    <img src="imagens/Turma.jpg" class="rounded resized-image" alt="LogoTurma">
                </div>
                <div class="col-md-8">
                    <div class="form-container">
                        <h2 class="form-title">Informações da Turma</h2>
                        <form class="row g-3 needs-validation" novalidate name="turma-form" action="TurmaController" method="post">
                            <div class="col-md-6">
                                <label for="validationTooltip02" class="form-label">Descrição</label>
                                <input type="text" name="descricao" class="form-control" id="validationTooltip02" required>
                            </div>
                            <div class="col-md-6">
                                <label for="validationTooltip01" class="form-label">ID</label>
                                <input type="number" name="id" class="form-control" id="validationTooltip01" required>
                            </div>
                            <div class="col-md-4">
                                <label for="validationTooltip05" class="form-label">Curso</label>
                                <select class="form-select" name="curso" id="validationTooltip05" required>
                                    <option selected disabled value="">Escolha...</option>
                                </select>
                            </div>
                            <div class="col-12 d-flex justify-content-center">
                                <button class="btn btn-primary me-2" type="submit" name="insert">Cadastrar</button>
                                <button type="submit" class="btn btn-success me-2" name="update" style="margin-left: 5%">Actualizar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
                    <hr>
            <div class="mt-5">
                <h2>Lista de Turmas</h2>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Descrição</th>
                            <th>ID</th>
                            <th>Curso</th>
                            <th>Acções</th>
                        </tr>
                    </thead>
                    <tbody id="turma-list">
                        <!-- As turmas serão inseridas aqui -->
                    </tbody>
                </table>
            </div>
        </section>

        <script>
            // Exemplo de turmas
            const turmas = [
                {descricao: 'Descrição 1', id: 1, curso: 'Curso 1'},
                {descricao: 'Descrição 2', id: 2, curso: 'Curso 2'},
                {descricao: 'Descrição 3', id: 3, curso: 'Curso 3'}
            ];

            function renderTurmas() {
                const turmaList = document.getElementById('turma-list');
                turmaList.innerHTML = '';

                turmas.forEach(turma => {
                    const tr = document.createElement('tr');

                    tr.innerHTML = `
                <td>${turma.descricao}</td>
                <td>${turma.id}</td>
                <td>${turma.curso}</td>
               <td class="action-buttons">
                        <button class="btn btn-success me-2" onclick="atualizarTurma(${turma.id})">
                            <i class="bi bi-pencil-square"></i> 
                        </button>
                        <button class="btn btn-danger btn-sm" onclick="excluirTurma(${turma.id})">
                            <i class="bi bi-trash"></i> 
                        </button>
                    </td>
              `;

                    turmaList.appendChild(tr);
                });
            }

            function atualizarTurma(id) {
                alert('Atualizar turma com o id: ' + id);
                // Adicione aqui a lógica para atualizar a turma
            }

            function excluirTurma(id) {
                alert('Excluir turma com o id: ' + id);
                // Adicione aqui a lógica para excluir a turma
            }

            document.addEventListener('DOMContentLoaded', renderTurmas);
        </script>

        <!-- Adicione o link para o ícone do Bootstrap -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
    </body>
</html>

