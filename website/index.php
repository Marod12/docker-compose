<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Docker-Fist | Marod</title>
  <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css" />
</head>
<body>
  <?php
    $result = file_get_contents("http://node-container:9001/constelacoes");
    $constelacoes = json_decode($result);
  ?>
  
  <div class="container mx-auto mt-5" style="width: 400px;"> 
    <table class="table">
      <thead>
        <tr>
          <th class='text-center'>Constelação</th>
          <th class='text-center'>Estrela mais brilhante</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach($constelacoes as $constelacao): ?>
          <tr>
            <td class='text-center'><?php echo $constelacao->name; ?></td>
            <td class='text-center'><?php echo $constelacao->estrelaBig; ?></td>
          </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
  </div>
</body>
</html>