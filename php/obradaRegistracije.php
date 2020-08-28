<?php
    include "baza.class.php";
    include '../modeli/Dnevnik.php';
    include '../modeli/ActionEnum.php';
    registrirajKorisnika();
    function registrirajKorisnika(){
        $veza = new Baza();
        $veza->spojiDB();
        $pwhash = sha1($_GET["lozinka"]);
        //$pwhash = password_hash($_GET["lozinka"], PASSWORD_DEFAULT);
        //kreiraj token za slanje u mailu radi aktivacije
        $znakovi = 'qwertzuiopasdfghjklyxcvbnmQWERTZUIOPASDFGHJKLYXCVBNM1234567890!$/*';
        //uzmi znakove i izmješaj ih
        $izmjesaniZnakovi = str_shuffle($znakovi);
        //uzmi dio iz izmješaniZnakovi i posalji u mailu
        $kod = substr($izmjesaniZnakovi, 0, 15);
        $from = 'tkeskic@foi.hr';
        $subject = 'Aktivacijski kod';
        $email = $_POST["Email"];
        $VirtualnoVrijeme = new VirtualnoVrijeme();
        $datum_registracije = $VirtualnoVrijeme->getTime();
        //$datum_registracije = date("Y-m-d H:i:s");
        $body = "Kliknite na link da biste aktiviralu račun\r\n http://barka.foi.hr/WebDiP/2019_projekti/WebDiP2019x062/php/kod.php?email=$email&kod=$kod";
        $upit = "INSERT INTO Korisnik(ime, prezime, datum_rodjenja, korisnicko, email, lozinka, lozinka_hash, kod, datum_registracije) VALUES('" . $_POST["Ime"] . "','" . $_POST["Prezime"] . "','" . $_POST["Godina"] . "','" . $_POST["Korisnicko_ime"] . "','" . $_POST["Email"] . "','" . $_POST["lozinka"] . "','" . $pwhash . "','" . $kod . "','" . $datum_registracije . "')";
        $result = $veza->selectDB($upit);
        if(!$result){
            echo "Pogreska ko unosa";
            header("Location: ./pogreska.php");
        }else{
            //posalji mail
            if(mail($email, $subject, $body, $from)){
                echo "Uspješno poslan mail";
            }else{
                echo "Problem kod slanja maila";
            }
        }
        $veza->zatvoriDB();
        $log = array("korisnicko" => $_SERVER['REMOTE_ADDR'], "akcija" => ActionEnum::REGISTER, "dataRow" => 'Nista');
        Dnevnik::insertLog($log);
        header("Location: ../index.php?page=login");
        exit();
    }
?>