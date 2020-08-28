<?php
require_once "./php/baza.class.php";

class Zahtjev{

     function insert($korisnicko, $artikl_id){
        $veza = new Baza();
        $veza->spojiDB();
        $upit = "INSERT INTO Zahtjevi(korisnicko, artikl_id) VALUES('" . $korisnicko . "','" . $artikl_id . "')";
        $vraceno = $veza->selectDB($upit);
        if(!$vraceno){
            echo "Pogreska kod insertanja zahtjeva";
        }else{
            echo "Zahtjev poslan";
        }
        $veza->zatvoriDB();
    }

    function delete($id){
        $veza = new Baza();
        $veza->spojiDB();
        $upit = "DELETE FROM Zahtjevi WHERE id='{$id}'";
        $vraceno = $veza->selectDB($upit);
        if(!$vraceno){
            echo "Pogreska kod brisanja zahtjeva";
        }else{
            echo "Zahtjev obrisan";
        }
        $veza->zatvoriDB();
    }

    function getAll(){
        $lista = array();
        $veza = new Baza();
        $veza->spojiDB();
        if($veza->pogreskaDB()){
            echo "Pogreska kod spajanja na bazu";
        }
        $upit = "SELECT * FROM Zahtjevi";
        $vraceno = $veza->selectDB($upit);
        while($red = mysqli_fetch_array($vraceno)){
            $element = array("id" => $red["id"], "korisnicko" => $red["korisnicko"], "artikl_id" => $red["artikl_id"]);
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
        $upit = "SELECT * FROM Zahtjevi WHERE id = '{$id}'";
        $vraceno = $veza->selectDB($upit);
        $red = mysqli_fetch_assoc($vraceno);
        if(!$red){
            echo "Nije dohvacen zahtjev";
        }
        $element = array("id" => $red["id"], "korisnicko" => $red["korisnicko"], "artikl_id" => $red["artikl_id"]);
        $veza->zatvoriDB();
        return $element;
    }
}

?>