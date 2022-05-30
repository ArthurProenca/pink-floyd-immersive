<?php

	include "conexao.php";
	
	$cod = $_GET['cod'];
	$statusmsg = 'Lido';

	$sql = "UPDATE usuarios SET status = '$statusmsg' WHERE cod=$cod;";
	
	mysqli_query($con, $sql);

	header("refresh:0.1; URL=listagem.php");
?>