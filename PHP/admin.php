	<?php

	session_start();
	
	include "conexao.php";
	
	$us = $_POST['usuario'];
	$pw = $_POST['senha'];
	
	$sql = "SELECT * FROM admin WHERE usuario='$us';";
	
	$res = mysqli_query($con, $sql);
	
	$_SESSION['logado'] = "";
	
	while($l = mysqli_fetch_array($res)){

		$senha = $l['senha']; 
		$usuario = $l['usuario'];
		
		if($senha === $pw && $usuario === $us){

			$_SESSION['logado'] = "ok";

			header("refresh:0.1; URL=listagem.php");
		}else{
			header("refresh:0.1; URL=login.html");
		}
	}

?>




