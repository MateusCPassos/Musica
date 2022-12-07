<h1>Bandas</h1>
<br>
<?php
  //sql para buscar as bandas
  $sql = "select id, nome from banda
  order by id  desc";

  //execultar o sql
  $consulta = mysqli_query($con, $sql);

  //separar os dados
  while( $dados = mysqli_fetch_array($consulta)){
    $id = $dados["id"];
    $nome = $dados["nome"];
    
    echo"
    <h2>{$nome}</h2>
    <p>
      <a href='index.php?pagina=banda&id={$id}'>
      Ver discos da banda
      </a>
      </p>
      <hr>
      ";
      ?>
      <br>
      <?php

  }
  ?>