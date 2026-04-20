<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil</title>
              <link rel="icon" href="css/graduation-hat.png" type="image/png">

    <link rel="stylesheet" href="css/perfil.css?v=1">
</head>
<?php
session_start();

if (!isset($_SESSION["nombre"])) {
    header("Location: login.php");
    exit;
}

$nombreUsuario = htmlspecialchars($_SESSION["nombre"]);
?>
<body>
    

   <header class="header">
    <nav class="nav">
         <a href="usuario.php">HOME</a>
        <a href="perfil.php">PERFIL</a>
    </nav>
</header>
    <div class="datos-usuario">

    <div>
        <p>Aqui podra ver sus datos</p>
    </div>


<?php 




    require "db.php";
     $sql = "SELECT CC, nombre,apellido,username,Phone,Email,edad FROM usuarios WHERE CC=". $_SESSION['CC'];

    $stmt = $conn-> prepare($sql);
    $stmt->execute();

    $resultados = $stmt->fetch(PDO::FETCH_ASSOC);
   

   echo "<dl>
            <dt>Nombre y Apellido</dt>
                <dd>{$resultados['nombre']} {$resultados['apellido']} </dd>
            <dt>CC</dt>
                <dd>{$resultados['CC']}</dd>
            <dt>Nombre de Usuario</dt>
                <dd>{$resultados['username']}</dd>
            <dt>Email</dt>
                <dd>{$resultados['Email']}</dd>
            <dt>Telefono</dt>
                <dd>{$resultados['Phone']}</dd>
            <dt>edad</dt>
                <dd>{$resultados['edad']}</dd>
         </dl>";

?>

    </div>



    <form action="perfil_modificar.php" method="POST">
        <input type="hidden" name="cc" value="<?= $resultados['CC'] ?>">
    <button type="submit">Modificar</button>
</form>
    
</body>
</html>