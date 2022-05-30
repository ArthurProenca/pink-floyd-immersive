<?php
	session_start();

	if($_SESSION['logado'] != "ok"){
		header("refresh:0; URL=login.html");
	}

	include "conexao.php";

		$sql = "SELECT * FROM usuarios;";

		$res = mysqli_query($con, $sql);
			
?>

<html>
	<head>
		<meta charset="utf-8"/>
		<title>Pink Floyd: Lista de e-mails</title>
		<link rel="stylesheet" type="text/css" href="../css/estilolist.css">
		<link rel="icon" type="imagem/jpg" href="../imagens/icon.jpg" />
	</head>
	<body>
		<?php
			$variavel=2;
			
			echo"

				<div id='meio'>
					<h1>Admin<br/>PinkFloyd</h1>
					<table id='tabela'>
						<tr class='cabecalho'>
							<td class='col'>COD</td>
							<td class='col'>Nome</td>
							<td class='col'>Álbum favorito</td>
							<td class='col'>Comentário</td>
							<td class='col'>Nota ao site</td>
							<td class='col'>Status</td>
							<td class='col'>Apagar</td>
							
						</tr>
				";

			while($linha = mysqli_fetch_array($res)){
				$cod = $linha['cod'];
				$nome = $linha['nome'];
				$album = $linha['album'];
				$comentario = $linha['comentario'];
				$nota = $linha['nota'];
				$status = $linha['status'];

				if($variavel == 1){
					$variavel = 1;
				}else{
						$variavel = 2;
					}

				if($status == 'Não lido'){
					$status2 = '&#9888;';
				}else{
						$status2 = '&#9745;';
					}

				echo"
						<tr class='linha".$variavel."'>
							<td align='center'>$cod</td> 
							<td align='center'>$nome</td> 	
							<td align='center'>$album</td>
							<td align='center'>$comentario</td>	
							<td align='center'>$nota</td>
							<td align='center'><a href='readmsg.php?cod=$cod'>$status2</a></td>
							<td align='center'><a href='dellmsg.php?cod=$cod'>&#9746;</a></td>
						</tr>
					";
					$variavel--;
			}
			echo"
					</table>
					<a href='../paginas/contato.html'>
						<input type='button' value='Voltar para contato' id='botao'/>
					</a>
					<a href='../index.html'>
						<input type='button' value='Voltar para homepage' id='botao'/>
					</a>
					<a href='../paginas/page3.html'>
						<input type='button' value='Voltar para álbuns' id='botao'/>
					</a>
				</div>
			";
		?>
	</body>
</html>