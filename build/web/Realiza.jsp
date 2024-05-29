<%-- 
    Document   : Realiza
    Created on : 25/05/2024, 19:32:44
    Author     : Wilson BILA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-pt">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ISCIM-Realiza</title>
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
                                <a class="nav-link active" aria-current="page" href="Realiza.jsp" style="color: #fff;">Notas</a>
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
                    <img src="imagens/Realiza.jpg" class="rounded resized-image" alt="LogoNota">
                </div>
                <div class="col-md-8">
                    <div class="form-container">
                        <h2 class="form-title">Nota do Estudante</h2>
                        <form class="row g-3 needs-validation" novalidate name="realiza-form" action="RealizaController" method="post">
                            <div class="col-md-6">
                                <label for="validationTooltip01" class="form-label">Código do Estudante</label>
                                <input type="number" name="codigo" class="form-control" id="validationTooltip01" required>
                            </div>
                            <div class="col-md-4">
                                <label for="validationTooltip05" class="form-label">Avaliação</label>
                                <select class="form-select" name="avaliacao" id="validationTooltip05" required>
                                    <option selected disabled value="">Escolha...</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="validationTooltip05" class="form-label">Disciplina</label>
                                <select class="form-select" name="disciplina" id="validationTooltip05" required>
                                    <option selected disabled value="">Escolha...</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="validationTooltip01" class="form-label">Nota</label>
                                <input type="number" name="nota" class="form-control" id="validationTooltip01" required>
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
                <h2>Lista de Notas</h2>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Avaliação</th>
                            <th>Disciplina</th>
                            <th>Nota</th>
                            <th>Acções</th>
                        </tr>
                    </thead>
                    <tbody id="nota-list">
                        <!-- As notas serão inseridas aqui -->
                    </tbody>
                </table>
            </div>
        </section>

        <script>
            // Exemplo de notas de estudantes
            const notas = [
                {nrmatricula: 1, avaliacao: 'Avaliação 1', disciplina: 'Disciplina 1', nota: 'Nota 1'},
                {nrmatricula: 2, avaliacao: 'Avaliação 2', disciplina: 'Disciplina 2', nota: 'Nota 2'},
                {nrmatricula: 3, avaliacao: 'Avaliação 3', disciplina: 'Disciplina 3', nota: 'Nota 3'}
            ];

            function renderNotas() {
                const notaList = document.getElementById('nota-list');
                notaList.innerHTML = '';

                notas.forEach(nota => {
                    const tr = document.createElement('tr');

                    tr.innerHTML = `
                <td>${nota.nrmatricula}</td>
                <td>${nota.avaliacao}</td>
                <td>${nota.disciplina}</td>
                <td>${nota.nota}</td>
                <td class="action-buttons">
                        <button class="btn btn-success me-2" onclick="atualizarNota(${nota.nrmatricula})">
                            <i class="bi bi-pencil-square"></i> 
                        </button>
                        <button class="btn btn-danger btn-sm" onclick="excluirNota(${nota.nrmatricula})">
                            <i class="bi bi-trash"></i> 
                        </button>
                    </td>
              `;

                    notaList.appendChild(tr);
                });
            }

            function atualizarNota(nrmatricula) {
                alert('Atualizar nota do estudante com o número de matrícula: ' + nrmatricula);
                // Adicione aqui a lógica para atualizar a nota
            }

            function excluirNota(nrmatricula) {
                alert('Excluir nota do estudante com o número de matrícula: ' + nrmatricula);
                // Adicione aqui a lógica para excluir a nota do estudante
            }

            document.addEventListener('DOMContentLoaded', renderNotas);
        </script>

        <!-- Adicione o link para o ícone do Bootstrap -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
    </body>
</html>
