<h1>discos</h1>
<br>
<?php
  //sql buscar os ultimos 5 discos
  $sql = "select id, titulo, ano from disco order by id  desc limit 5";

  //execultar o sql
  $consulta = mysqli_query($con, $sql);

  //separar os dados
  while( $dados = mysqli_fetch_array($consulta)){
    $id = $dados["id"];
    $titulo = $dados["titulo"];
    $ano = $dados["ano"];

    echo "<h2>{$titulo}</h2>
    <p>musica de: {$ano}</p>
    <p>
      <a href='index.php?pagina=discos&id={$id}'>
      Ver discos
      </a>
      <hr>
      ";

    ?>
    <br>
    <?php

  }


  ?>