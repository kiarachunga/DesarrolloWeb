<?php
require 'conexion.php';

session_start();

$usuario=$_POST['usuario'];
$clave=$_POST['clave'];

$q = "SELECT COUNT(*) as contar from usuario where email='$usuario' and clave= '$clave'";
$consulta=mysqli_query($conexion,$q);
$array= mysqli_fetch_array($consulta);

if($array['contar']>0){
    $_SESSION['username']= $usuario ;
    header("location:../principal.php");
}else{
    echo"datos mal";
}

?>