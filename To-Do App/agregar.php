<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/agregar.css?v=1">

      <link rel="icon" href="css/graduation-hat.png" type="image/png">

<link rel="stylesheet" href="css/usuario.css?v=1"></head>

</head>
<body>



   <header class="header">
    <nav class="nav">
        <a href="usuario.php">HOME</a>
        <a href="perfil.php">PERFIL</a>
    </nav>
</header>


    <?php
session_start();

// Si no hay usuario logueado, redirige al login
if (!isset($_SESSION["nombre"])) {
    header("Location: login.php");
    exit;
}

$nombreUsuario = htmlspecialchars($_SESSION["nombre"]);
?>




   

    <div class="materias-container">

    <div class="materias-header">
        Seleccionar Materias
    </div>

    <!-- Encabezado -->
    <div class="materia-row header">
        <div>Materia</div>
        <div>Profesor</div>
        <div>Salón</div>
        <div>Cupos</div>
        <div>Elegir</div>
    </div>


    <?php
    
     require "db.php";
     $sql = "SELECT DISTINCT c.codigo, c.Profesor, c.Materia, c.Salon, c.Cupos FROM cursos AS c
JOIN 
Cursos_inscritos AS ci ON c.codigo = Ci.Codigo_curso WHERE  ci.CC!=". $_SESSION['CC'];

$stmt = $conn-> prepare($sql);
    $stmt->execute();

    $resultados = $stmt->fetchAll(PDO::FETCH_ASSOC);

    
    ?>
    <!-- Filas -->
 <form method='POST' action ='guardar.php'>
    <?php
    foreach ($resultados as $fila) {
     echo "<div class='materia-row'>
          
                <div>{$fila['Materia']}</div>
                <div>{$fila['Profesor']}</div>
                <div>{$fila['Salon']}</div>
                <div class='cupos'>{$fila['Cupos']}</div>
                <div><input type='checkbox' name='materias[]' value ='{$fila['codigo']}'></div>
            
         </div>";
   
    }
    ?>
</div>



   <button type = 'submit'class= 'button_confirm'>Confirmar</button>
</form>


     
</body>
</html>