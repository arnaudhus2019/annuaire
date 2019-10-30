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
		echo 'Connexion réussie<br>';
    }
	
	function close() {
		
		mysqli_close($this->_conn);
	}
	
	function rechercheProfessionnel()
	{
		// sql 
		$sql = "SELECT * FROM annuaire.professionnel";

		if ($result = mysqli_query($this->_conn, $sql)) {
			echo "Recherche ok<br>";
		} else {
			printError();
		}
		
		printf("Select a retourne %d lignes.<br>", $result->num_rows);

		/* Libération du jeu de résultats */
		$result->close();
		
		return $result;
	}
	
	function rechercheParticulier($_POST['nom'], $_POST['prenom'], $_POST['cp'], $_POST['ville'])
	{
		// sql 
		$sql = "SELECT * FROM annuaire.professionnel where nom like ='%".$_POST['nom']."%'";

		if ($result = mysqli_query($this->_conn, $sql)) {
			echo "Recherche ok<br>";
		} else {
			printError();
		}
		
		printf("Select a retourne %d lignes.<br>", $result->num_rows);

		/* Libération du jeu de résultats */
		$result->close();
		
		return $result;
	}
	
	$_POST['nom']

	function printError(){
		
		echo "Error SQL : " . mysqli_error($this->_conn) . "<br>";
	}
}
	
$bdd = new Bdd;

$bdd->connect();
$bdd->rechercheParticulier();
$bdd->close();
?> 