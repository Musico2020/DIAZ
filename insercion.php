<html>
<head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <title>Problema</title>
</head>
<body>
  <?php
  $conexion = mysqli_connect("localhost", "root", "", "diaz") or
    die("Problemas con la conexión");

  mysqli_query($conexion, "insert into cliente (nombre, cedula, apellidos, direccion, telefono, correo) values  
  ('$_REQUEST[nombre]',$_REQUEST[cedula],'$_REQUEST[apellidos]','$_REQUEST[direccion]',$_REQUEST[telefono],
  '$_REQUEST[correo]')") or die("Problemas en el select" . mysqli_error($conexion));
  
  {
    echo "<script>
    alert('GUARDADO EXITOSAMENTE');
    window.location= 'contacto.php'
</script>";
}

  mysqli_close($conexion);
  ?>
</body>
</html>