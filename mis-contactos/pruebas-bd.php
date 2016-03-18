<?php
/*  PASOS PARA CONECRAR UNA BD MySQL CON php
1)Conectarme a la BD. mysql necesita 3 datos:
		-Servidor, Usuario de la BD, Password del usuario
*/
$conexion = mysql_connect("localhost","root","cesar")or die("No se pudo conectar con el servidor de BD");
echo "Se ha podido realizar cone con MySQL<br/>";

?>