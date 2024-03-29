<?php
class Bdd {
  private $_servername = 'localhost';
  private $_username = 'root';
  private $_password = '';
  private $_conn;

  public function connect() {

    $this->_conn = new mysqli($this->_servername, $this->_username, $this->_password);

    mysqli_query($this->_conn, "SET character_set_results = 'utf8', character_set_client = 'utf8',
    character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");

    //On v�rifie la connexion
    if($this->_conn->connect_error){
      die('Erreur : ' .$this->_conn->connect_error);
    }
    //echo 'Connexion reussie<br>';

  }

  function close() {

    mysqli_close($this->_conn);
  }

  public function rechercheProfessionnel()
  {
    // sql
    $return = "";
    if(isset($_POST['designation'])){
      $sql = "SELECT designation,adresse, codePostal, ville, numTel  
		FROM annuaire.professionnel 
		where designation like '%".$_POST['designation']."%'
		and codePostal like '%".$_POST['cp']."%'
		and ville like '%".$_POST['ville']."%'";


      if ($result = mysqli_query($this->_conn, $sql)) {
        //echo "Recherche ok<br>";
      } else {
        $this->printError();
      }
      return $result;
    }
  }

  public function rechercheParticulier()
  {

    // sql
    $return = "";
    if(isset($_POST['nom'])){
      $sql = "SELECT nomPrenom, adresse, codePostal, ville, numTel
      FROM annuaire.particulier
      where (nomPrenom like '%".$_POST['nom']."%".$_POST['prenom']."%')
      and codePostal like '%".$_POST['cp']."%'
      and ville like '%".$_POST['ville']."%'";


      if ($result = mysqli_query($this->_conn, $sql)) {
        //echo "Recherche ok<br>";
      } else {
        $this->printError();
      }

      return $result;
    }
  }
  
  public function rechercheInversee()
  {

    // sql
    $return = "";
    if(isset($_POST['numero'])){
      $sql = "SELECT pro.designation as nomPrenom, pro.adresse, pro.codePostal, pro.ville, pro.numTel 
		FROM annuaire.professionnel pro 
		where REPLACE(pro.numTel, ' ', '') 
		like REPLACE('".$_POST['numero']."', ' ', '')
		UNION
		SELECT par.nomPrenom, par.adresse, par.codePostal, par.ville, par.numTel 
		FROM annuaire.particulier par 
		where REPLACE(par.numTel, ' ', '') like REPLACE('".$_POST['numero']."', ' ', '')";


      if ($result = mysqli_query($this->_conn, $sql)) {
        //echo "Recherche ok<br>";
      } else {
        $this->printError();
      }

      return $result;
    }
  }

  public function rechercheAbonne($login, $password)
  {

    // sql
    $return = "";
    if(isset($login) and isset($password)){
      $sql = "SELECT mail, mdp
      FROM annuaire.abonnes
      where (mail = '".$login."' and mdp = '".$password."');";
      if ($result = mysqli_query($this->_conn, $sql)) {
        //echo "Recherche ok<br>";
      } else {
        $this->printError();
      }

      return $result;
    }
  }


  public function printError(){

    echo "Error SQL : " . mysqli_error($this->_conn) . "<br>";
  }
}


?>
