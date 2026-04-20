<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">







    <h2>Iniciar sesión</h2>


    <?php
$host = "localhost";
$user = "root";
$pass = ""; // contraseña vacía por defecto en XAMPP
$db   = "repaso";

// Crear conexión

$conn = new mysqli($host, $user, $pass, $db);

$conn->close();
?>

    <form action="php/auth.php" method="POST">
        <input class ="input"type="email" name="email" placeholder="Correo" required>
        <input class = "input"type="password" name="password" placeholder="Contraseña" required>
        <input type="hidden" name="action" value="login">
        <button type="submit">Entrar</button>
    </form>
    <p>¿No tienes cuenta? <a href="register.php">Regístrate</a></p>
</div>
</body>
</html>
