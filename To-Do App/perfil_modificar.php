<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/usuario.css?v=1">
          <link rel="icon" href="css/graduation-hat.png" type="image/png">

    <link rel = "stylesheet" href = "css/modify.css?=1">
    <title>Modificar</title>
</head>

    <title>Perfil</title>
</head>
<body>

<?php
session_start();
require "db.php";

// Si no hay usuario logueado, redirige al login
if (!isset($_SESSION["nombre"])) {
    header("Location: login.php");
    exit;
}


$cc = $_POST['cc'];
$sql = "SELECT CC, nombre,apellido,username,Phone,Email,edad FROM usuarios WHERE CC=". $cc;

    $stmt = $conn-> prepare($sql);
    $stmt->execute();

    $resultados = $stmt->fetch(PDO::FETCH_ASSOC);
$nombreUsuario = htmlspecialchars($_SESSION["nombre"]);
?>





     <header class="header">
    <nav class="nav">
        <a href="usuario.php">HOME</a>
        <a href="perfil.php">PERFIL</a>
    </nav>
</header>




<div class="form-container">
    <h2>Editar Perfil</h2>

    <form method="POST" action="modify.php">
        
        <div class="form-group">
            <label>Nombre</label>
            <input type="text" name="nombre" value="<?=  $resultados['nombre']?>">
        </div>

        <div class="form-group">
            <label>Apellido</label>
            <input type="text" name="apellido" value="<?= $resultados['apellido'] ?>">
        </div>


        <div class="form-group">
            <label>Nombre de Usuario</label>
            <input type="text" name="username" value="<?= $resultados['username'] ?>">
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="Email" value="<?=  $resultados['Email']?>">
        </div>

        <div class="form-group">
            <label>Teléfono</label>
            <input type="text" name="Phone" value="<?= $resultados['Phone'] ?>">
        </div>

        <div class="form-group">
            <label>Edad</label>
            <input type="number" name="edad" value="<?= $resultados['edad'] ?>">
        </div>

        <button type="submit" class="btn">Guardar cambios</button>

    </form>
</div>

<div></div>
</body>
</html>