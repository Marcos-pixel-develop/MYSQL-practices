<?php
require "db.php";
session_start();

if (isset($_POST["materias"])) {

    foreach ($_POST["materias"] as $fila) {

        echo $fila . "<br>";

        $sql = "INSERT INTO Cursos_inscritos (CC, Codigo_curso) 
                VALUES (:cc, :codigo)";

        $stmt = $conn->prepare($sql);

        $stmt->execute([
            ":cc" => $_SESSION['CC'],
            ":codigo" => $fila
        ]);
    }

    header("Location: usuario.php");
exit();
}
?>