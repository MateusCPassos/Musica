<?php
  //criae conexao no banco de dados
  $servidor = "localhost";
  //usuario do banco
  $usuario = "root";
  //senha do banco
  $senha = "";
  //banco de dados a ser acessado
  $banco = "desafio";

  $con = mysqli_connect($servidor, $usuario, $senha, $banco)
  or die("nao foi possivel conectar o banco");

  //forçar ficar em utf-8
  mysqli_set_charset($con, "utf8");

  //retornar a tela anterior
  function mensage($msg){
    echo "<script>alert('{$msg}'); history.back();</script>";
    exit;
  }
  ?>