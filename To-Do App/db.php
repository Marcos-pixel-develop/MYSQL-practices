<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Materias</title>
    <link rel="stylesheet" href="css/usuario.css">
</head>

<?php
$host = "localhost";
$db   = "repaso";
$user = "root";          // cámbialo si usas otro
$pass = "";              // tu contraseña
$port = 3306;            // MySQL de Workbench

try {
    $conn = new PDO(
        "mysql:host=$host;port=$port;dbname=$db;charset=utf8",
        $user,
        $pass
    );

    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // echo "Conectado correctamente"; // solo para pruebas
} catch (PDOException $e) {
    die("❌ Error de conexión: " . $e->getMessage());
}
?>