<?php
require_once "./php/baza.class.php";

class Kategorija{
    private $id;
    private $naziv;
    private $opis;
    private $popust_id;
    private $trgovina_id;

    function getFiveCategories(){
        $lista = array();
        $veza = new Baza();
        $veza->spojiDB();
        if($veza->pogreskaDB()){
            echo "Pogreska kod spajanja na bazu";
        }
        $upit = "SELECT Kategorija.id as id, Kategorija.naziv as naziv, Popusti.postotak as postotak FROM Kategorija LEFT JOIN Popusti on Popusti.id=Kategorija.popust ORDER BY Popusti.postotak DESC LIMIT 5";
        $vraceno = $veza->selectDB($upit);
        while($red = mysqli_fetch_array($vraceno)){
            $element = array("id" => $red["id"], "naziv" => $red["naziv"], "popust" => $red["postotak"]);
            array_push($lista, $element);
        }
        $vraceno->close();
        $veza->zatvoriDB();
        return $lista;
    }

    function getAllCategories(){
        $lista = array();
        $veza = new Baza();
        $veza->spojiDB();
        if($veza->pogreskaDB()){
            echo "Pogreska kod spajanja na bazu";
        }
        $upit = "SELECT Kategorija.id as id, Kategorija.naziv as naziv, Popusti.postotak as postotak FROM Kategorija LEFT JOIN Popusti on Popusti.id=Kategorija.popust ORDER BY Popusti.postotak DESC";
        $vraceno = $veza->selectDB($upit);
        while($red = mysqli_fetch_array($vraceno)){
            $element = array("id" => $red["id"], "naziv" => $red["naziv"], "popust" => $red["postotak"]);
            array_push($lista, $element);
        }
        $vraceno->close();
        $veza->zatvoriDB();
        return $lista;
    }

    function insert($naziv, $opis, $postotak_id){
        $upit = "INSERT INTO Kategorija(naziv, opis, popust) VALUES('" . $naziv . "','" . $opis . "','" . $postotak_id . "')";
        $veza = new Baza();
        $veza->spojiDB();
        $vraceno = $veza->selectDB($upit);
        if(!$vraceno){
            echo "Problem kod kreiranja kategorije";
        }
        $veza->zatvoriDB();
    }
}

?>