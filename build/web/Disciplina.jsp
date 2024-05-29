<%-- 
    Document   : Disciplina
    Created on : 25/05/2024, 19:32:56
    Author     : Wilson BILA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-pt">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ISCIM-Disciplina</title>
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
                                <a class="nav-link active" aria-current="page" href="Disciplina.jsp" style="color: #fff;">Disciplina</a>
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
                    <img src="imagens/Disciplina.jpg" class="rounded resized-image" alt="LogoDisciplina">
                </div>
                <div class="col-md-8">
                    <div class="form-container">
                        <h2 class="form-title">Informações da Disciplina</h2>
                        <form class="row g-3 needs-validation" novalidate name="disciplina-form" action="DisciplinaController" method="post">
                            <div class="col-md-6">
                                <label for="validationTooltip02" class="form-label">Nome</label>
                                <input type="text" name="nome" class="form-control" id="validationTooltip02" required>
                            </div>
                            <div class="col-md-6">
                                <label for="validationTooltip01" class="form-label">ID</label>
                                <input type="number" name="id" class="form-control" id="validationTooltip01" required>
                            </div>
                            <div class="col-md-6">
                                <label for="validationTooltip01" class="form-label">CHS (Carga Horária Semanal)</label>
                                <input type="number" name="chs" class="form-control" id="validationTooltip01" required>
                            </div>
                            <div class="col-md-6">
                                <label for="validationTooltip01" class="form-label">Crédito</label>
                                <input type="number" name="credito" class="form-control" id="validationTooltip01" required>
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
                <h2>Lista de Disciplinas</h2>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>ID</th>
                            <th>CHS</th>
                            <th>Crédito</th>
                            <th>Curso</th>
                            <th>Acções</th>
                        </tr>
                    </thead>
                    <tbody id="disciplina-list">
                        <!-- As disciplinas serão inseridas aqui -->
                    </tbody>
                </table>
            </div>
        </section>

        <script>
            // Exemplo de disciplinas
            const disciplinas = [
                {nome: 'Disciplina 1', id: 1, chs: 40, credito: 25, curso: 'Disciplina 1'},
                {nome: 'Disciplina 2', id: 2, chs: 60, credito: 30, curso: 'Disciplina 2'},
                {nome: 'Disciplina 3', id: 3, chs: 30, credito: 50, curso: 'Disciplina 3'}
            ];

            function renderDisciplinas() {
                const disciplinaList = document.getElementById('disciplina-list');
                disciplinaList.innerHTML = '';

                disciplinas.forEach(disciplina => {
                    const tr = document.createElement('tr');

                    tr.innerHTML = `
                <td>${disciplina.nome}</td>
                <td>${disciplina.id}</td>
                <td>${disciplina.chs}</td>
                <td>${disciplina.credito}</td>
                <td>${disciplina.curso}</td>
                <td class="action-buttons">
                        <button class="btn btn-success me-2" id="btn-update" style="width: 20%">
                            <i class="bi bi-pencil-square"></i> 
                        </button>
                    <button class="btn btn-danger me-2" id="btn-delete" style="width: 20%">
                            <i class="bi bi-trash"></i> 
                        </button>
                    </td>
              `;

                    disciplinaList.appendChild(tr);
                });
            }

            function atualizarDisciplina(id) {
                alert('Atualizar disciplina com o id: ' + id);
                // Adicione aqui a lógica para disciplina
            }

            function excluirDisciplina(id) {
                alert('Excluir disciplina com o id: ' + id);
                // Adicione aqui a lógica para disciplina
            }

            document.addEventListener('DOMContentLoaded', renderDisciplinas);
        </script>

        <!-- Adicione o link para o ícone do Bootstrap -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
    </body>
</html>