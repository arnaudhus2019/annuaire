<?php session_start();?>
<!DOCTYPE html>
<html>
<head>
  <title>Annuaire</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="style.css" />
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>



  <div class="container">

    <div class="row">
      <div class="col-md-offset-5 col-md-3">
        <form action="" method="post" class="form-login">
          <h4>Bonjour</h4>
          <input type="text" name="login" class="form-control input-sm chat-input" placeholder="identifiant" />
        </br>
        <input type="text" name="password" class="form-control input-sm chat-input" placeholder="mot de passe" />
      </br>
      <div class="wrapper">
        <span class="group-btn">
          <input type="submit" value="Login" class="btn btn-info btn-block rounded-0 py-2">
          <input type="button" value="annuler" class="btn btn-info btn-block rounded-0 py-2" onclick="window.location='index.php'">
        </span>
      </div>
    </form>
    <?php include"Bdd.php"?>
    <?php
    if (isset($_POST['login']) && isset($_POST['password'])) {
      $bdd = new Bdd;
      $bdd->connect();
      // cette requête permet de récupérer l'utilisateur depuis la BD
      $requete = "SELECT * FROM annuaire.abonnes WHERE mail=? AND mdp=?";
      $resultat = $bdd->rechercheAbonne($_POST['login'],$_POST['password'] );
      $login = $_POST['login'];
      $mdp = $_POST['password'];
      if ($resultat->num_rows == 1) {
        $_SESSION['login'] = $login;
        $_SESSION['password'] = $mdp;
        $authOK = true;
        $_SESSION['session'] = $authOK;
        header('Location: index.php');
      }else{
        $_SESSION['session'] = 'false';
        ?>
        <script type="text/javascript">
        alert("login ou mot de passe incorrect");
        </script>

        <?php
        //echo 'login ou mot de passe incorrect';
      }

      $bdd->close();
    } ?>

  </div>
</div>

</div>

</body>
</html>
