<?php 

session_start();
require "db.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    if ($_POST["accion"] == "eliminar") {
        $codigo = $_POST["codigo"];

        $sql = "DELETE FROM Cursos_inscritos 
                WHERE CC = :cc AND Codigo_curso = :codigo";

        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'cc' => $_SESSION['CC'],
            'codigo' => $codigo
        ]);
    }
}

header("Location: usuario.php");
exit();

?>