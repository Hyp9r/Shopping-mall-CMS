<?php
    if((!isset($_SERVER["HTTPS"])) || $_SERVER["HTTPS"] != "on"){
        $https = "https://" . $_SERVER["SERVER_NAME"] . $_SERVER["REQUEST_URI"];
        header("Location: $https");
        exit();
    }
    require "./baza.class.php";
    include '../modeli/Dnevnik.php';

    session_start();
    autentificirajKorisnika();


    function autentificirajKorisnika(){
        if(isset($_POST["submit"])){
            //Get data from FORM(korisnicko ime i lozinka)
            $korisnicko = $_POST["Korisnicko_ime"];
            $lozinka = $_POST["lozinka"];
            setcookie('Korisnicko_ime', $korisnicko, time() + 2 * 24 * 60 * 60);
            $tipKorisnika;
            $autentifikacija = false;
    
            $veza = new Baza();
            $veza->spojiDB();
            $upit = "SELECT * FROM Korisnik WHERE korisnicko = '{$korisnicko}' AND lozinka = '{$lozinka}'";
            $vraceno = $veza->selectDB($upit);
            if(!$vraceno){
                echo "Pogreska kod query-a";
            }
            $red = mysqli_fetch_assoc($vraceno);
            //do something with the data
            if($red){
                if($red["blokiran"] !== '1' && $red["aktiviran"] === '1'){
                    $autentifikacija = true;
                    $tipKorisnika = $red["permission_level"];
                }
            }else{
                header("Location: ../forms/registration.php");
            }
            if($autentifikacija){
                setupSession($tipKorisnika);
                clearFailedAttmpts();
                echo "Autentificiran";
                //logaj
                $log = array("korisnicko" => $_POST["Korisnicko_ime"], "akcija" => 'Prijava u sustav', "dataRow" => 'Nista');
                Dnevnik::insertLog($log);
            }else{
                //neuspjesna prijava
                echo "Neuspjesna prijava";
                getUserFromDB();
            }
            $veza->zatvoriDB();
            header("Location: ../index.php");
            exit();
        }else{
            header("Location: ../forms/registration.php");
        }
    }

    function checkAttempts(){
    }

    function setupSession($permission_level){
        $_SESSION["korisnik"] = $_POST["Korisnicko_ime"];
        $_SESSION["tip"] = $permission_level;
        $_COOKIE["korisnik"] = $_POST["Korisnicko_ime"];
        if($permission_level == 1){
            $_SESSION["kosarica"] = array();
        }
    }

    function blockUser(){
        $veza = new Baza();
        $veza->spojiDB();
        $upit = "UPDATE Korisnik SET blokiran = 1 WHERE korisnicko = '$_POST[Korisnicko_ime]'";
        $vraceno = $veza->selectDB($upit);
        if(!$vraceno){
            echo "Pogreska kod blokiranja korisnika";
        }
        $veza->zatvoriDB();
    }

    function clearFailedAttmpts(){
        $upit = "UPDATE Korisnik SET broj_pokusaja = 0 WHERE korisnicko = '$_POST[Korisnicko_ime]'";
        $veza = new Baza();
        $veza->spojiDB();
        $vraceno = $veza->selectDB($upit);
        if(!$vraceno){
            echo "Pogreska kod brisanja broja pokušaja";
        }
        $veza->zatvoriDB();
    }

    function updateFailedLogin(){
        $veza = new Baza();
        $veza->spojiDB();
        $upit = "UPDATE Korisnik SET broj_pokusaja = broj_pokusaja + 1 WHERE korisnicko = '$_POST[Korisnicko_ime]'";
        $vraceno = $veza->selectDB($upit);
        if(!$vraceno){
            echo "Pogreska kod ažuriranja broja pokušaja";
        }
        $veza->zatvoriDB();
    }

    function getUserFromDB(){
        $veza = new Baza();
        $veza->spojiDB();
        $upit = "SELECT * FROM Korisnik WHERE korisnicko = '$_POST[Korisnicko_ime]'";
        $vraceno = $veza->selectDB($upit);
        if(!$vraceno){
            echo "Pogreska kod dohvacanja korisnika";
        }
        $broj;
        $red = mysqli_fetch_assoc($vraceno);
        $broj = $red["broj_pokusaja"];
        //check for broj_pokusaja and block user if needed
        if($red["broj_pokusaja"] > 2){
            blockUser();
        }else{
            updateFailedLogin();
        }
        $veza->zatvoriDB();
        return $red;
    }
?>