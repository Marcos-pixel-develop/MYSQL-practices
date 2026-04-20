<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Usuario</title>
          <link rel="icon" href="css/graduation-hat.png" type="image/png">

<link rel="stylesheet" href="css/usuario.css?v=12"></head>

<?php
session_start();

// Si no hay usuario logueado, redirige al login
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


    <div class="materias-box">
        <div class ='materias-head'>
               <h2 style="justify-content:top" >Materias</h2>
        </div>
     
    <?php
    require "db.php";

    $sql = "SELECT us.nombre, us.apellido ,us.CC, ci.Codigo_curso, c.Materia,c.Profesor  FROM usuarios AS us 
    JOIN cursos_inscritos AS ci ON us.CC=ci.CC JOIN
cursos AS c ON ci.Codigo_curso = c.codigo WHERE us.CC= ". $_SESSION["CC"];  
    $stmt = $conn-> prepare($sql);
    $stmt->execute();


    $resultados = $stmt->fetchAll(PDO::FETCH_ASSOC);

    foreach ($resultados as $fila) {
     echo "<div class='materia'>
        
        <p class='codigo'>{$fila['Codigo_curso']}</p>
        <p class='nombre'>{$fila['Materia']}</p>
        <p class='profesor'>{$fila['Profesor']}</p>

        <form method='POST' class = 'materia-form' action='acciones.php'>
            <input type='hidden' name='codigo' value='{$fila['Codigo_curso']}'>
            <button 
                type='submit' 
                name='accion' 
                value='eliminar' 
                class='materia-button'
                onclick='return confirm(\"¿Seguro que quieres eliminar este curso?\")'>
                x
            </button>
        </form>
      </div>";

      }

    ?>
   <div class="contenedor-boton">

    <a href="agregar.php">
        <button class="btn-pro" >Agregar materia</button>
    </a>
    
    </div>


    </div>

</body>
</html>