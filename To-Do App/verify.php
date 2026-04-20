<?php
session_start(); 
require "db.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $email = $_POST["Email"];
    $password = $_POST["password"];

    // Buscar usuario por email
    $sql = "SELECT CC,nombre,apellido,username,Phone,Email,edad,profesion,Contrasena 
            FROM Usuarios 
            WHERE Email = :email";

    $stmt = $conn->prepare($sql);
    $stmt->execute([":email" => $email]);

    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    
    if ($user) {

        // verificar contraseña
       if ($password == $user["Contrasena"]) {

    // Guardar datos del usuario en la sesión
    $_SESSION["CC"] = $user["CC"];
    $_SESSION["nombre"] = $user["nombre"];
    $_SESSION["apellido"] = $user["apellido"];
    $_SESSION["username"] = $user["username"];
    $_SESSION["Email"] = $user["Email"];

    // Redirigir a la página de bienvenida
    header("Location: usuario.php");
    exit;
}else {
            echo "Contraseña incorrecta";
        }

    } else {
        echo "Usuario no encontrado";
    }
}
?>