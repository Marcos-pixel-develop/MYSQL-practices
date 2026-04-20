<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro</title>
    <link rel="stylesheet" href="css/style.css">
              <link rel="icon" href="css/graduation-hat.png" type="image/png">

</head>
<body>





<div class="container">
    <h2>Crear cuenta</h2>

    <form action="auth.php" method="POST">

        <input type="text" name="nombre" placeholder="Nombre" required>

        <input type="text" name="apellido" placeholder="Apellido" required>

        <input type="text" name="username" placeholder="Nombre de usuario" required>

        <input type="tel" name="telefono" placeholder="Teléfono" required>

        <input type="email" name="email" placeholder="Correo electrónico" required>

        <input type="number" name="edad" placeholder="Edad"  required>


    <label for="profesion">Profesión</label>
        <select name="profesion" id="profesion" required>
            <option value="">-- Selecciona una opción --</option>
            <option value="trabajador">Trabajador</option>
            <option value="estudiante">Estudiante</option>
            <option value="ninguno">Ninguno</option>    
        </select>

        <input type="hidden" name="action" value="register">

        <button type="submit">Registrarse</button>
    </form>

    <p>
        ¿Ya tienes cuenta?
        <a href="index.php">Inicia sesión</a>
    </p>
</div>


</body>
</html>
