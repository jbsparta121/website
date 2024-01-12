<?php 
    $servidor = "127.0.0.1:3307";
    $baseDeDatos = "website";
    $usuario = "root";
    $contrasenia = "";

    try {
        $conexion = new PDO("mysql:host=$servidor;dbname=$baseDeDatos",$usuario,$contrasenia);
    } catch(Exception $error) {
        echo $error->getMessage();
    }
?>