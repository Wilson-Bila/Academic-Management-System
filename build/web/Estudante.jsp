<%-- 
    Document   : Estudante
    Created on : 25/05/2024, 19:31:37
    Author     : Wilson BILA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-pt">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ISCIM-Estudante</title>
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
                                <a class="nav-link active" aria-current="page" href="Estudante.jsp" style="color: #fff;">Estudante</a>
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
                    <img src="imagens/Estudante.png" class="rounded resized-image" alt="LogoEstudante">
                </div>
                <div class="col-md-8">
                    <div class="form-container">
                        <h2 class="form-title">Informações do Estudante</h2>
                        <form class="row g-3 needs-validation" novalidate name="estudante-form" action="EstudanteController" method="post">
                            <div class="col-md-6">
                                <label for="validationTooltip01" class="form-label">Código do Estudante</label>
                                <input type="number" name="codigo" class="form-control" id="validationTooltip01" required>
                            </div>
                            <div class="col-md-6">
                                <label for="validationTooltip02" class="form-label">Nome</label>
                                <input type="text" name="nome" class="form-control" id="validationTooltip02" required>
                            </div>
                            <div class="col-md-6">
                                <label for="validationTooltip03" class="form-label">Apelido</label>
                                <input type="text" name="apelido" class="form-control" id="validationTooltip03" required>
                            </div>
                            <div class="col-md-6">
                                <label for="validationTooltip04" class="form-label">Endereço</label>
                                <input type="text" name="endereco" class="form-control" id="validationTooltip04" required>
                            </div>
                            <div class="col-md-6">
                                <label for="validationTooltip04" class="form-label">Contacto</label>
                                <input type="tel" name="contacto" class="form-control" id="validationTooltip04" required>
                                <div class="invalid-tooltip">
                                    Por favor forneça um número de telemóvel válido.
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for="validationTooltip05" class="form-label">Curso</label>
                                <select class="form-select" name="curso" id="validationTooltip05" required>
                                    <option selected disabled value="">Escolha...</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="validationTooltip05" class="form-label">Turma</label>
                                <select class="form-select" name="turma" id="validationTooltip05" required>
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
                <h2>Lista de Estudantes</h2>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Nome</th>
                            <th>Apelido</th>
                            <th>Endereço</th>
                            <th>Contacto</th>
                            <th>Curso</th>
                            <th>Turma</th>
                            <th>Acções</th>
                        </tr>
                    </thead>
                    <tbody id="estudante-list">
                        <!-- Os estudantes serão inseridos aqui -->
                    </tbody>
                </table>
            </div>
        </section>

        <script>
            // Exemplo de dados de estudantes
            const estudantes = [
                {nrmatricula: 1, nome: 'Estudante 1', apelido: 'Apelido 1', endereco: 'Endereco 1', contacto: 871099009, curso: 'Curso 1', turma: 'Turma 1'},
                {nrmatricula: 1, nome: 'Estudante 2', apelido: 'Apelido 2', endereco: 'Endereco 2', contacto: 842487332, curso: 'Curso 2', turma: 'Turma 2'},
                {nrmatricula: 3, nome: 'Estudante 3', apelido: 'Apelido 3', endereco: 'Endereco 3', contacto: 823055448, curso: 'Curso 3', turma: 'Turma 3'}
            ];

            function renderEstudantes() {
                const estudanteList = document.getElementById('estudante-list');
                estudanteList.innerHTML = '';

                estudantes.forEach(estudante => {
                    const tr = document.createElement('tr');

                    tr.innerHTML = `
                <td>${estudantes.nrmatricula}</td>
                <td>${estudante.nome}</td>
                <td>${estudante.apelido}</td>
                <td>${estudante.endereco}</td>
                <td>${estudante.contacto}</td>
                <td>${estudante.curso}</td>
                <td>${estudante.turma}</td>
                <td class="action-buttons">
                        <button class="btn btn-success me-2" onclick="atualizarEstudante(${estudante.nrmatricula})">
                            <i class="bi bi-pencil-square"></i> 
                        </button>
                        <button class="btn btn-danger btn-sm" onclick="excluirEstudante(${estudante.nrmatricula})">
                            <i class="bi bi-trash"></i> 
                        </button>
                    </td>
              `;

                    estudanteList.appendChild(tr);
                });
            }

            function atualizarEstudante(nrmatricula) {
                alert('Atualizar estudante com número de matrícula: ' + nrmatricula);
                // Adicione aqui a lógica para atualizar o estudante
            }

            function excluirEstudante(nrmatricula) {
                alert('Excluir estudante com número de matrícula: ' + nrmatricula);
                // Adicione aqui a lógica para excluir o estudante
            }

            document.addEventListener('DOMContentLoaded', renderEstudantes);
        </script>

        <!-- Adicione o link para o ícone do Bootstrap -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
    </body>
</html>