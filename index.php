<?php
    include "config.php";
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>discos</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="shortcut icon" href="img/icone2.jfif">
</head>
<body>
  <header>
      <a href="index.php" title="Home - discos" class="titulo">
        <img src="img/logo.gif" alt="logo do site" class="logo">
      </a>

      <nav>
        <ul>
          <li>
            <a href="index.php?pagina=home" class="tamanho-letra">
              Home</a>
          </li>
          <li>
            <a href="index.php?pagina=bandas" class="tamanho-letra">
              Bandas
            </a>
          </li>
          <li>
            <a href="index.php?pagina=discos" class="tamanho-letra">
              Discos
            
            </a>
          </li>
        </ul>
      </nav>
  </header>
  
    <main>
      <div class="grid">
        <div class="coluna">
          <?php
              //recuperar a pagina abrir
              $pagina = $_GET["pagina"] ?? "home";

              $pagina = "pages/{$pagina}.php";
              
              //echo $pagina;
              //vereficar se a pagina existe
              if(file_exists($pagina)){
                include $pagina;
              }else{
                include "pages/erro.php";
              }
              ?>
        </div>
        <div class="coluna">
          <aside>
            <h2>Listas de bandas</h2>
              <?php
                $sql = "select * from banda 
                order by nome, id desc  ";

                $consulta = mysqli_query($con, $sql);
                //mostrar as bandas
                while($dados = mysqli_fetch_array($consulta)){
                  $id = $dados["id"];
                  $nome = $dados["nome"];

                  echo"<li><a href='index.php?pagina=banda&id={$id}'>{$nome}</a></li>";

                }
                ?>
          </aside>
        </div>
      </div>
    </main>
      <footer>
          <p>
          desenvolvido por Mateus
          </p>
      </footer>

</body>
</html>