<?php
require_once "./php/baza.class.php";

class Korisnik{
    private $id;
    private $ime;
    private $prezime;


    function getAllUsers(){
        $lista = array();
        $veza = new Baza();
        $veza->spojiDB();
        if($veza->pogreskaDB()){
            echo "Pogreska kod spajanja na bazu";
        }
        $upit = "SELECT * FROM Korisnik";
        $vraceno = $veza->selectDB($upit);
        while($red = mysqli_fetch_array($vraceno)){
            $element = array("id" => $red["id"], "ime" => $red["ime"], "prezime" => $red["prezime"], "email" => $red["email"], "korisnicko" => $red["korisnicko"], "broj_pokusaja" => $red["broj_pokusaja"], "blokiran" => $red["blokiran"]);
            array_push($lista, $element);
        }
        $vraceno->close();
        $veza->zatvoriDB();
        return $lista;
    }

    function blockUser($id){
        $veza = new Baza();
        $veza->spojiDB();
        if($veza->pogreskaDB()){
            echo "Pogreska kod spajanja na bazu";
        }
        $upit = "UPDATE Korisnik SET blokiran = '1' WHERE id={$id}";
        $vraceno = $veza->selectDB($upit);
        if(!$vraceno){
            echo "Pogreska kod updateanja korisnika";
        }
        $veza->zatvoriDB();
    }

    function unblockUser($id){
        $veza = new Baza();
        $veza->spojiDB();
        if($veza->pogreskaDB()){
            echo "Pogreska kod spajanja na bazu";
        }
        $upit = "UPDATE Korisnik SET blokiran = '0' WHERE id={$id}";
        $vraceno = $veza->selectDB($upit);
        if(!$vraceno){
            echo "Pogreska kod updateanja korisnika";
        }
        $veza->zatvoriDB();
    }

    function changePassword($password, $email){
        $veza = new Baza();
        $veza->spojiDB();
        if($veza->pogreskaDB()){
            echo "Pogreska kod spajanja na bazu";
        }
        $upit = "UPDATE Korisnik SET lozinka = '{$password}' WHERE email='{$email}'";
        $vraceno = $veza->selectDB($upit);
        if(!$vraceno){
            echo "Pogreska kod updateanja korisnika";
        }
        $veza->zatvoriDB();
    }

    function addModerator($trgovina_id, $korisnik_id){
        $veza = new Baza();
        $veza->spojiDB();
        if($veza->pogreskaDB()){
            echo "Pogreska kod spajanja na bazu";
        }
        $upit = "UPDATE Korisnik SET trgovina_id = '{$trgovina_id}', permission_level = '2' WHERE id='{$korisnik_id}'";
        $vraceno = $veza->selectDB($upit);
        if(!$vraceno){
            echo "Pogreska kod updateanja korisnika";
        }
        $veza->zatvoriDB();
    }

}

?>