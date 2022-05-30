<?php
	include "conexao.php";

	$nome = $_POST['nome'];
	$album = $_POST['album'];
	$coment = $_POST['comentario'];
	$nota = $_POST['nota'];
	$statusmsg = 'Não lido';

	$sql = "INSERT INTO usuarios VALUES (DEFAULT, '$nome', '$album', '$coment', '$nota', '$statusmsg');";

	$res = mysqli_query($con, $sql);

	if(isset($_POST['numero'])){
	    header("refresh:0.1; URL=../paginas/autor.html");
	}
	else{
	    header("refresh:0.1; URL=../paginas/contato.html");
	}



?>