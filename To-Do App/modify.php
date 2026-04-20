
<?php 

session_start();
require "db.php";


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
$email = $_POST["Email"];
$name = $_POST["nombre"];
$apellido = $_POST["apellido"];
$phone = $_POST["Phone"];
    $cc = $_SESSION['CC'];


  
           $sql = "UPDATE usuarios 
            SET nombre = :nombre, 
                apellido = :apellido, 
                username = :username, 
                Email = :email, 
                Phone = :phone 
            WHERE CC = :cc";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':nombre' => $name,
            ':apellido' => $apellido,
            ':username' => $username,
            ':email' => $email,
            ':phone' => $phone,
            ':cc' => $cc
        ]);
}


header("Location: usuario.php");
exit();

?>