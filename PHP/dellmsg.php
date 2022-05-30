<?php
	
	include "conexao.php";
	
	$cod = $_GET['cod'];
	$sql = "DELETE FROM usuarios WHERE cod=$cod;";
	
	mysqli_query($con, $sql);
	
	echo"Apagado com sucesso";

	header("refresh:0.1; URL=listagem.php");
?>