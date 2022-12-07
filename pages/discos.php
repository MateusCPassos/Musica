<h1>discos</h1>
<br>
<ul>
  <?php
    //selecionar as categorias 
    $sql="select * from disco order by ano";
    //execultar o sql
    $consulta = mysqli_query($con, $sql);

    //mostrar os resultados
    while( $dados = mysqli_fetch_array( $consulta)){
      $id = $dados["id"];
      $titulo = $dados["titulo"];
      $ano =$dados["ano"];

      echo "
      <li>
      {$titulo}
      </li>
      ";      
    }

  ?>
</ul>