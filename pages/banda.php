<?php
    //recuperar o id enviado por get
    $id = $_GET["id"] ?? NULL;

    if(empty($id)){
      echo"<p>banda invalida</p>";
      }else{
        $sql = "select * from disco where
         banda_id = {$id} order by ano";
         $consulta = mysqli_query($con, $sql);
      }

         while($dados = mysqli_fetch_array(($consulta))){;

         
        $titulo = $dados["titulo"];
        $ano = $dados["ano"];

        echo "<h1>{$titulo}</h1>";
        echo "<p>Data da postagem: {$ano}</p>"; 
        ?>
        <br>
        <?php
      }
    ?>
    
    