<?php
    require '../php/baza.class.php';

    if(isset($_POST["AJAXUnesenoKorime"]))
    {
        $veza = new Baza();
        $returnValue = false;
        $veza->spojiDB();
        $korisnicko = $_POST["AJAXUnesenoKorime"];
        $upit = "SELECT * FROM Korisnik 
                WHERE korisnicko='{$korisnicko}'";
                
        $vraceno = $veza->selectDB($upit);
        
        if(mysqli_fetch_array($vraceno))
        {
            echo '<p>Korisnicko ime je zauzeto!</p>' . "," . "false";
        } else
        {
            echo '<p>Ispravno korisnicko ime</p>' . "," . "true";
        }

        $veza->zatvoriDB();
    }

    if(isset($_POST["AJAXEmail"])){
        $veza = new Baza();
        $returnValue = false;
        $veza->spojiDB();
        $email = $_POST["AJAXEmail"];
        $upit = "SELECT * FROM Korisnik 
                WHERE email='{$email}'";
                
        $vraceno = $veza->selectDB($upit);
        
        if(mysqli_fetch_array($vraceno))
        {
            echo '<p>Email je zauzet!</p>' . "," . "false";
        } else
        {
            echo '<p>Email je ispravan</p>' . "," . "true";
        }

        $veza->zatvoriDB();
    }
?>