<?php
require_once "./php/baza.class.php";

class Trgovina{
    private $id;
    private $naziv;
    private $kontakt;


    function getAllStores(){
        $lista = array();
        $veza = new Baza();
        $veza->spojiDB();
        if($veza->pogreskaDB()){
            echo "Pogreska kod spajanja na bazu";
        }
        $upit = "SELECT * FROM Trgovina";
        $vraceno = $veza->selectDB($upit);
        while($red = mysqli_fetch_array($vraceno)){
            $element = array("id" => $red["id"], "naziv" => $red["naziv"], "kontakt" => $red["kontakt"]);
            array_push($lista, $element);
        }
        $vraceno->close();
        $veza->zatvoriDB();
        return $lista;
    }

    function createStore($naziv, $kontakt){
        $upit = "INSERT INTO Trgovina(naziv, kontakt) VALUES('" . $naziv . "','" . $kontakt . "')";
        $veza = new Baza();
        $veza->spojiDB();
        $vraceno = $veza->selectDB($upit);
        if(!$vraceno){
            echo "Problem kod kreiranja trgovina";
        }
        $veza->zatvoriDB();
    }
}

?>