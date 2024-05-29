<%-- 
    Document   : Avaliacao
    Created on : 25/05/2024, 19:31:46
    Author     : Wilson BILA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-pt">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ISCIM-Avaliação</title>
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
                                <a class="nav-link active" aria-current="page" href="Avaliacao.jsp" style="color: #fff;">Avaliação</a>
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
                    <img src="imagens/Avaliacao.jpg" class="rounded resized-image" alt="LogoTurma">
                </div>
                <div class="col-md-8">
                    <div class="form-container">
                        <h2 class="form-title">Informações da Avaliação</h2>
                        <form class="row g-3 needs-validation" novalidate name="avaliacao-form" action="AvaliacaoController" method="post"> 
                            <div class="col-md-6">
                                <label for="validationTooltip02" class="form-label">Descrição</label>
                                <input type="text" name="descricao" class="form-control" id="validationTooltip02" required>
                            </div>
                            <div class="col-md-6">
                                <label for="validationTooltip01" class="form-label">ID</label>
                                <input type="number" name="id" class="form-control" id="validationTooltip01" required>
                            </div>
                            <div class="col-md-6">
                                <label for="validationTooltip01" class="form-label">Peso</label>
                                <input type="number" name="peso" class="form-control" id="validationTooltip01" required>
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
                <h2>Lista de Avaliações</h2>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>ID da Avaliação</th>
                            <th>Descrição da Avaliação</th>
                            <th>Peso da Avaliação</th>
                            <th>Acções</th>
                        </tr>
                    </thead>
                    <tbody id="avaliacao-list">
                        <!-- As avaliacoes serão inseridas aqui -->
                    </tbody>
                </table>
            </div>
        </section>

        <script>
            // Exemplo de dados de avaliacoes
            const avaliacoes = [
                {id: 1, descricao: 'Avaliação 1', peso: 30},
                {id: 2, descricao: 'Avaliação 2', peso: 25},
                {id: 3, descricao: 'Avaliação 3', peso: 40}
            ];

            function renderAvaliacoes() {
                const avaliacaoList = document.getElementById('avaliacao-list');
                avaliacaoList.innerHTML = '';

                avaliacoes.forEach(avaliacao => {
                    const tr = document.createElement('tr');

                    tr.innerHTML = `
                <td>${avaliacao.id}</td>
                <td>${avaliacao.descricao}</td>
                <td>${avaliacao.peso}</td>
                <td class="action-buttons">
                        <button class="btn btn-success me-2" onclick="atualizarAvaliacao(${avaliacao.id})">
                            <i class="bi bi-pencil-square"></i> 
                        </button>
                        <button class="btn btn-danger btn-sm" onclick="excluirAvaliacao(${avaliacao.id})">
                            <i class="bi bi-trash"></i> 
                        </button>
                    </td>
              `;

                    avaliacaoList.appendChild(tr);
                });
            }

            function atualizarAvaliacao(id) {
                alert('Atualizar avaliação com ID: ' + id);
                // Adicione aqui a lógica para atualizar a avaliacao
            }

            function excluirAvaliacao(id) {
                alert('Excluir avaliação com ID: ' + id);
                // Adicione aqui a lógica para excluir o curso
            }

            document.addEventListener('DOMContentLoaded', renderAvaliacoes);
        </script>

        <!-- Adicione o link para o ícone do Bootstrap -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
    </body>
</html>




