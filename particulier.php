<?php session_start() ?>
<!DOCTYPE html>
<html>
<head>
  <title>Annuaire</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
  <?php include"login.php" ?>
  <div class="container">
    <h2 class="text-center">Annuaire de Recherche des particuliers</h2>
    <div class="row justify-content-center">
      <div class="col-12 col-md-8 col-lg-6 pb-5">
        <form action="" method="post" target="_self">
          <div class="card border-primary rounded-0">
            <div class="card-header p-0">
              <div class="bg-info text-white text-center py-2">
                <h3><i class="fas fa-search"></i> Recherche</h3>
              </div>
            </div>
            <div class="card-body p-3">
              <div class="form-group">
                <div class="input-group mb-2">
                  <div class="input-group-prepend">
                    <div class="input-group-text"><i class="fa fa-user text-info"></i></div>
                  </div>
                  <input type="text" class="form-control" id="name" name="nom" placeholder="Entrez un nom"
                  value="<?php if (isset($_POST['nom'])){echo $_POST['nom'];} ?>" required>
                </div>
              </div>
              <div class="form-group">
                <div class="input-group mb-2">
                  <div class="input-group-prepend">
                    <div class="input-group-text"><i class="fa fa-user text-info"></i></div>
                  </div>
                  <input type="text" class="form-control" id="prenom" name="prenom" placeholder="Entrez un prenom"
                  value="<?php if (isset($_POST['prenom'])){echo $_POST['prenom'];} ?>">
                </div>
              </div>
              <div class="form-group">
                <div class="input-group mb-2">
                  <div class="input-group-prepend">
                    <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                  </div>
                  <input type="text" class="form-control" id="cp" name="cp" placeholder="75000"
                  value="<?php if (isset($_POST['cp'])){echo $_POST['cp'];} ?>">
                </div>
              </div>
              <div class="form-group">
                <div class="input-group mb-2">
                  <div class="input-group-prepend">
                    <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                  </div>
                  <input type="text" class="form-control" id="ville" name="ville" placeholder="Paris"
                  value="<?php if (isset($_POST['ville'])){echo $_POST['ville'];} ?>">
                </textarea>
              </div>
            </div>
            <div class="text-center">
              <input type="submit" value="Rechercher" class="btn btn-info btn-block rounded-0 py-2">
              <input type="reset" value="Annuler" class="btn btn-info btn-block rounded-0 py-2">
              <input type="button" value="Professionnel" class="btn btn-info btn-block rounded-0 py-2" onclick="window.location='index.php';">
			  <input type="button" value="inverse" class="btn btn-info btn-block rounded-0 py-2" onclick="window.location='inverse.php';">
            </div>
          </div>
        </div>
      </div>
    </div>
    <?php include"Bdd.php"?>
    <?php $bdd = new Bdd;
    $bdd->connect();
    $result = $bdd->rechercheParticulier();
    if(isset($result)){ ?>
      <div class="container" style="margin: 0 auto; width: 850px;">
        <div class="row">
          <div class="span5">
            <table class="table table-striped table-condensed">
              <thead>
                <tr>
                  <th>Nom Prenom</th>
                  <th>Adresse</th>
                  <th>Code postal</th>
                  <th>Ville</th>
                  <th>Numero telephone</th>
                </tr>
              </thead>
              <tbody>
                <?php
                while($row = $result->fetch_array())
                {
                  echo "<tr>";
                  echo "	<td>".$row['nomPrenom']."</td>";
                  echo "	<td>".$row['adresse']."</td>";
                  echo "	<td>".$row['codePostal']."</td>";
                  echo "	<td>".$row['ville']."</td>";
                  echo "	<td>".$row['numTel']."</td>";
                  echo "</tr>";
                }
                $result->close();
              }
              $bdd->close();
              ?>
            </tbody>
          </table>
        </div>
      </div>
    </form>
  </div>
</div>
</div>
</body>
</html>
