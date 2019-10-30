<!DOCTYPE html>
<html>
<head>
  <title>Annuaire</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
  <?php
    include"login.php"
   ?>
  <div class="container">
    <h2 class="text-center">Annuaire de Recherche</h2>
    <div class="row justify-content-center">
      <div class="col-12 col-md-8 col-lg-6 pb-5">
        <form action="index.php" method="post">
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
                  <input type="text" class="form-control" id="name" name="name" placeholder="Entrez un nom" required>
                </div>
              </div>
              <div class="form-group">
                <div class="input-group mb-2">
                  <div class="input-group-prepend">
                    <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                  </div>
                  <input type="text" class="form-control" id="name" name="cp" placeholder="75000">
                </div>
              </div>
              <div class="form-group">
                <div class="input-group mb-2">
                  <div class="input-group-prepend">
                    <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                  </div>
                  <input type="text" class="form-control" placeholder="Paris"></textarea>
                </div>
              </div>
              <div class="text-center">
                <input type="submit" value="Rechercher" class="btn btn-info btn-block rounded-0 py-2">
                <input type="reset" value="Annuler" class="btn btn-info btn-block rounded-0 py-2">
                <input type="button" value="Particulier" class="btn btn-info btn-block rounded-0 py-2" onclick="window.location='particulier.php';">
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>

</html>
