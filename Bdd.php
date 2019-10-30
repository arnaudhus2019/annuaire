<?php
class Bdd {
    private $_servername = 'localhost'; 
    private $_username = 'root';
	private $_password = ''; 
    private $_conn;
   
    public function connect() {
        
		$this->_conn = new mysqli($this->_servername, $this->_username, $this->_password); 
             
		//On vérifie la connexion 
		if($this->_conn->connect_error){ 
			die('Erreur : ' .$this->_conn->connect_error); 
		} 
		//echo 'Connexion réussie<br>';
    }
	
	function close() {
		
		mysqli_close($this->_conn);
	}
	
	public function rechercheProfessionnel()
	{
		// sql 
		$sql = "SELECT * FROM annuaire.professionnel";

		if ($result = mysqli_query($this->_conn, $sql)) {
			echo "Recherche ok<br>";
		} else {
			printError();
		}
		
		//printf("Select a retourne %d lignes.<br>", $result->num_rows);

		/* Libération du jeu de résultats */
		$result->close();
		
		return $result;
	}
	
	public function rechercheParticulier()
	{
		// sql 
		$sql = "SELECT nomPrenom, adresse, codePostal, ville, numTel FROM annuaire.particulier where nomPrenom like '%".$_POST['nom']."%'";

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