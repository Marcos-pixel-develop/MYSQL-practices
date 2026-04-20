<?php
require "db.php";

$sql = "SELECT CC, Contrasena FROM Usuarios";
$stmt = $conn->query($sql);

while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {

    $id = $row["CC"];
    $plain = $row["Contrasena"];

    $hash = password_hash($plain, PASSWORD_DEFAULT);

    $update = $conn->prepare("UPDATE Usuarios SET Contrasena = :hash WHERE CC = :id");
    $update->execute([
        ":hash" => $hash,
        ":id" => $id
    ]);
}

echo "Todas las contraseñas fueron hasheadas.";