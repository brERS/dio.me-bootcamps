<?php
// Setting error reporting
ini_set("display_errors", 1);
// Setting character encoding
header("Content-type: text/html; charset=utf-8");

$version = phpversion();

$servername = "HOST_IP_OR_DOMAIN";
$username = "HOST_USER";
$password = "HOST_PASSWORD";
$database = "DB_NAME";

// Create connection
$link = new mysqli($servername, $username, $password, $database);

// Check connection
if (mysqli_connect_errno()) {
    $conn_fail = mysqli_connect_error();
    exit();
}

// Create variables, value random
$valor_rand2 = strtoupper(substr(bin2hex(random_bytes(4)), 1));
$host_name = gethostname();

// Formating query
$query = "
  INSERT INTO /*Command create*/
    dados /*Setting table*/
    (Nome, Sobrenome, Endereco, Cidade, Host) /*Setting columns*/
  VALUES 
    ('$valor_rand2', '$valor_rand2', '$valor_rand2', '$valor_rand2','$host_name') /*Setting values*/
";

// Executing query
if ($link->query($query) === TRUE) {
  $insert_status = True
} else {
  $insert_status = False
  $insert_error = $link->error;
}

?>

<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dio.me | Projeto Docker</title> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"> 
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h1 class="text-center">Dio.me | Projeto Docker</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <h2 class="text-center">PHP Version: <?php echo $version; ?></h2>
        </div>
      </div>
      <?php if (isset($conn_fail)) { ?>
      <div class="row">
        <div class="col-12">
          <h2 class="text-center alert alert-success" role="alert">MySQL Status: <?php echo $conn_fail; ?></h2>
        </div>
      </div>
      <?php 
        } else { 
        if ($insert_status == True) {  
      ?>
      <div class="row">
        <div class="col-12">
          <h2 class="text-center alert alert-success" role="alert">Insert Status: Sucesso!</h2>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <div class="col-12" role="alert">
          <h2 class="text-center alert alert-success">Insert Error: <?php echo $insert_error; ?></h2>
        </div>
      </div>
      <?php }} ?>
    </div>
  </body>
</html>
