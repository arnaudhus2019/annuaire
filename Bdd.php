<?php
class Bdd {
    private $_servername = 'localhost';
    private $_username = 'root';
	private $_password = '';
    private $_conn;

    public function connect() {
<<<<<<< HEAD
        
		$this->_conn = new mysqli($this->_servername, $this->_username, $this->_password); 
		
		mysqli_query($this->_conn, "SET character_set_results = 'utf8', character_set_client = 'utf8', 
			character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
             
		//On v�rifie la connexion 
		if($this->_conn->connect_error){ 
			die('Erreur : ' .$this->_conn->connect_error); 
		} 
		//echo 'Connexion r�ussie<br>';
		
=======

		$this->_conn = new mysqli($this->_servername, $this->_username, $this->_password);

		//On v�rifie la connexion
		if($this->_conn->connect_error){
			die('Erreur : ' .$this->_conn->connect_error);
		}
		//echo 'Connexion r�ussie<br>';
>>>>>>> 06e602ba66cc0cfb547db457f880dd9d4c110f73
    }

	function close() {

		mysqli_close($this->_conn);
	}

	public function rechercheProfessionnel()
	{
		// sql
		$sql = "SELECT designation,adresse, codePostal, ville, numTel  FROM annuaire.professionnel where designation like '%".$_POST['designation']."%'";

		if ($result = mysqli_query($this->_conn, $sql)) {
			//echo "Recherche ok<br>";
		} else {
			$this->printError();
		}
    return $result;
	}

	public function rechercheParticulier()
	{
<<<<<<< HEAD
		// sql 
		$sql = "SELECT nomPrenom, adresse, codePostal, ville, numTel 
		FROM annuaire.particulier 
		where (nomPrenom like '%".$_POST['nom']."%'
		or nomPrenom like '%".$_POST['prenom']."%')
		and codePostal like '%".$_POST['cp']."%'
		and ville like '%".$_POST['ville']."%'";
=======
		// sql
		$sql = "SELECT nomPrenom, adresse, codePostal, ville, numTel FROM annuaire.particulier where nomPrenom like '%".$_POST['nom']."%'";
>>>>>>> 06e602ba66cc0cfb547db457f880dd9d4c110f73

		if ($result = mysqli_query($this->_conn, $sql)) {
			//echo "Recherche ok<br>";
		} else {
			$this->printError();
		}

		return $result;
	}

	public function printError(){

		echo "Error SQL : " . mysqli_error($this->_conn) . "<br>";
	}
}


?>
