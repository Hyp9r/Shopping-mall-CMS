<?php
require_once "./php/baza.class.php";

class Artikl{
    private $id;
    private $naziv;
    private $opis;
    private $cijena;
    private $zaliha;
    private $trgovina_id;

    function getAll($kategorija_id){
        $lista = array();
        $veza = new Baza();
        $veza->spojiDB();
        if($veza->pogreskaDB()){
            echo "Pogreska kod spajanja na bazu";
        }
        $upit = "SELECT * FROM Artikl WHERE kategorija = '{$kategorija_id}'";
        $vraceno = $veza->selectDB($upit);
        while($red = mysqli_fetch_array($vraceno)){
            $element = array("id" => $red["id"], "naziv" => $red["naziv"], "opis" => $red["opis"], "cijena" => $red["cijena"], "zaliha" => $red["zaliha"], "trgovina_id" => $red["trgovina_id"]);
            array_push($lista, $element);
        }
        $vraceno->close();
        $veza->zatvoriDB();
        return $lista;
    }

    function getAllItems(){
        $lista = array();
        $veza = new Baza();
        $veza->spojiDB();
        if($veza->pogreskaDB()){
            echo "Pogreska kod spajanja na bazu";
        }
        $upit = "SELECT * FROM Artikl";
        $vraceno = $veza->selectDB($upit);
        while($red = mysqli_fetch_array($vraceno)){
            $element = array("id" => $red["id"], "naziv" => $red["naziv"], "opis" => $red["opis"], "cijena" => $red["cijena"], "zaliha" => $red["zaliha"], "trgovina_id" => $red["trgovina_id"]);
            array_push($lista, $element);
        }
        $vraceno->close();
        $veza->zatvoriDB();
        return $lista;
    }

    function getArtikl($id){
        $veza = new Baza();
        $veza->spojiDB();
        if($veza->pogreskaDB()){
            echo "Pogreska kod spajanja na bazu";
        }
        $upit = "SELECT * FROM Artikl WHERE id = '{$id}'";
        $vraceno = $veza->selectDB($upit);
        $red = mysqli_fetch_assoc($vraceno);
        if(!$red){
            echo "Nije dohvacen artikl";
        }
        /* Imamo kategoriju_id, trebamo sada doci do popusta*/
        $kategorija_id = $red['kategorija'];
        $upit_popust_id = "SELECT * FROM Kategorija WHERE id='{$kategorija_id}'";
        $vraceno1 = $veza->selectDB($upit_popust_id);
        $kategorija = mysqli_fetch_assoc($vraceno1);
        $popust_id = $kategorija['popust'];
        //sada imamo kategoriju i popust id
        $upit_popust_postotak = "SELECT * FROM Popusti WHERE id='{$popust_id}'";
        $vraceno2 = $veza->selectDB($upit_popust_postotak);
        $popust = mysqli_fetch_assoc($vraceno2);
        $postotak = $popust['postotak'];
        /* */
        $index = count($_SESSION['kosarica']);
        $element = array("index" => $index, "artikl_id" => $red["id"], "naziv" => $red["naziv"], "opis" => $red["opis"], "cijena" => $red["cijena"], "zaliha" => $red["zaliha"], "popust" => $postotak, "kolicina" => 1);
        $veza->zatvoriDB();
        return $element;
    }

    function insert($naziv, $opis, $cijena, $zaliha, $kategorija_id){
        $veza = new Baza();
        $veza->spojiDB();
        $upit = "INSERT INTO Artikl(naziv, opis, cijena, zaliha, kategorija) VALUES('" . $naziv . "','" . $opis . "','" . $cijena . "','" . $zaliha . "','" . $kategorija_id . "')";
        $vraceno = $veza->selectDB($upit);
        if(!$vraceno){
            echo "Pogreska kod insertanja artikla";
        }
        $veza->zatvoriDB();
    }

    function addTen($id){
        $veza = new Baza();
        $veza->spojiDB();
        $upit = "UPDATE Artikl SET zaliha = zaliha + 10 WHERE id = '{$id}'";
        $vraceno = $veza->selectDB($upit);
        if(!$vraceno){
            echo "Pogreska kod insertanja artikla";
        }
        $veza->zatvoriDB();
    }

}

?>