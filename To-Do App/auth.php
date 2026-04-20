<?php
require "db.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $nombre   = $_POST["nombre"];
    $apellido = $_POST["apellido"];
    $username = $_POST["username"];
    $telefono = $_POST["Phone"];
    $email    = $_POST["Email"];
    $edad     = $_POST["edad"];
    $profesion = $_POST["profesion"];
    $password = $_POST["password"];

    $hash = password_hash($password, PASSWORD_DEFAULT);

    $sql = "INSERT INTO Usuarios 
            (nombre, apellido, username, Phone, Email, edad, profesion, Contrasena)
            VALUES 
            (:nombre, :apellido, :username, :telefono, :email, :edad, :profesion, :password)";

    $stmt = $conn->prepare($sql);

    $stmt->execute([
        ":nombre"   => $nombre,
        ":apellido" => $apellido,
        ":username" => $username,
        ":telefono" => $telefono,
        ":email"    => $email,
        ":edad"     => $edad,
        ":profesion"=> $profesion,
        ":password" => $hash
    ]);

    echo "Usuario registrado correctamente";
}
?>