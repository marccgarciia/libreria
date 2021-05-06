<!DOCTYPE html>
<html lang="en">

<head>
    <title>BookShop | Marc</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
</head>

<body>
    <?php 
    include '../services/connection.php';
    session_start();
    // esto controla que cuando cierres sesion y tires flecha hacia atras no puedas entrar
    if (!isset($_SESSION['email'])){
        header('Location: login.html');
    }
    ?>
    <div class="one" id="negro">
      <div class="two">
        <h1 id="bienvenida">Hola <?php echo $_SESSION['email'];?> </h1>
      </div>
        <div class="two">
            <a href="../process/logout.php"><input class="button" type="button" value="Logout"></a>
      </div>
    </div>
    <div class="filtro">
      <form action="admin.bookshop.php" method="post" id="filtro">
          <input type="text" placeholder="buscar por título..." name="titulo">
          <input type="submit" placeholder="FILTRAR" name="filtro">
      </form>
    </div>
    <div clas="improvis">
    <h1>⠀</h1>
  </div>
    <table id="t01">
          <tr>
            <th>Nombre</th>
            <th>Fecha de Publicación</th> 
            <th>Sección</th>
          </tr>

          <!-- RECOGER LIBROS -->
          <?php
                  if (isset($_REQUEST['filtro'])) {
                      $titulo=$_REQUEST['titulo'];
                      $libros = mysqli_query($conexion,"SELECT books.name as name, books.publication as publication, sections.name as section FROM books INNER JOIN sections on books.section=sections.id WHERE books.name LIKE '%$titulo%'");
                  }else{
                      $libros = mysqli_query($conexion, "SELECT books.name as name, books.publication as publication, sections.name as section FROM books INNER JOIN sections on books.section=sections.id");
                  }
                  $libros = mysqli_query($conexion,"SELECT books.name as name, books.publication as publication, sections.name as section FROM books INNER JOIN sections on books.section=sections.id");
                  foreach ($libros as $libro) {
                      echo "<tr>";
                      echo "<td>{$libro['name']}</td>";
                      echo "<td>{$libro['publication']}</td>";
                      echo "<td>{$libro['section']}</td>";
                      echo "</tr>";
                  }
                  ?>

        </table>
</body>

</html>