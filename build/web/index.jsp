<%-- 
    Document   : index
    Created on : 27/05/2024, 18:44:39
    Author     : BILA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-pt">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ISCIM</title>
  <link rel="stylesheet" type="text/css" href="css/style.css" media="screen">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
  <header>
    <nav class="navbar navbar-expand-lg">
      <div class="container-fluid">
          <img src="imagens/ISCIM.png" alt="Logotipo" width="125" id="logo" style="max-height:100px">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.jsp" style="color: #fff;">Home</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

  <section class="hero-section">
    <div class="hero-text">
      <h1><strong>Bem-vindo ao ISCIM</strong></h1>
      <a href="#section2"> <button type="button" class="btn btn-primary" style="margin-top: 10px;" id="#section2">Serviços</button> </a>
    </div>
    <img src="imagens/Fundo1.jpg" alt="Imagem de Fundo" class="hero-image">
  </section>

  <div id="titulo">
    <h1 style="text-align: center;" id="section2">Opções de Gestão:</h1>
  </div>
  <div class="container mt-5">
    <div class="card-container">
        <div class="card">
            <a href="Estudante.jsp" class="title">
            <img src="imagens/Estudante.png" class="card-img-top" alt="Estudante">
            <div class="card-body">
                <h5 class="card-title">ESTUDANTE</h5>
            </div>
          </a>
        </div>

        <div class="card">
            <a href="Curso.jsp" class="title">
            <img src="imagens/Curso.jpg" class="card-img-top" alt="Curso">
            <div class="card-body">
                <h5 class="card-title">CURSO</h5>
            </div>
          </a>
        </div>

        <div class="card">
            <a href="Disciplina.jsp" class="title">
            <img src="imagens/Disciplina.jpg" class="card-img-top" alt="Disciplina">
            <div class="card-body">
                <h5 class="card-title">DISCIPLINA</h5>
            </div>
          </a>
        </div>

        <div class="card">
            <a href="Avaliacao.jsp" class="title">
            <img src="imagens/Avaliacao.jpg" class="card-img-top" alt="Avaliacao">
            <div class="card-body">
                <h5 class="card-title">AVALIAÇÃO</h5>
            </div>
          </a>
        </div>

        <div class="card">
            <a href="Turma.jsp" class="title">
            <img src="imagens/Turma.jpg" class="card-img-top" alt="Avaliacao">
            <div class="card-body">
                <h5 class="card-title">TURMA</h5>
            </div>
          </a>
        </div>

        <div class="card">
            <a href="Realiza.jsp" class="title">
            <img src="imagens/Realiza.jpg" class="card-img-top" alt="Avaliacao">
            <div class="card-body">
                <h5 class="card-title">NOTAS</h5>
            </div>
          </a>
        </div>
    </div>
</div>
</body>
</html>


