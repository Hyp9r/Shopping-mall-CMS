<?php

class Baza {

    const server = "localhost"; //barka.foi.hr
    const korisnik = "WebDiP2019x062";
    //const korisnik = "root";
    const lozinka = "admin_IHrs";
    //const lozinka = "1580450e";
    const baza = "WebDiP2019x062";
    //const baza = "WebDip";

    private $veza = null; //postavlja se u spojiDB
    private $greska = '';

    function spojiDB() {
        $this->veza = new mysqli(self::server, self::korisnik, self::lozinka, self::baza);
        if ($this->veza->connect_errno) {
            //connect_errno - error code
            //connect_error - vraca string greske
            echo "Neuspješno spajanje na bazu: " . $this->veza->connect_errno . ", " .
                $this->veza->connect_error;
            $this->greska = $this->veza->connect_error;
        }
        //default charset za slanje podataka na bazu
        $this->veza->set_charset("utf8");
        if ($this->veza->connect_errno) {
            echo "Neuspješno postavljanje znakova za bazu: " . $this->veza->connect_errno . ", " .
                $this->veza->connect_error;
            $this->greska = $this->veza->connect_error;
        }
        return $this->veza;
    }


    function zatvoriDB() {
        $this->veza->close();
    }

    function selectDB($upit) { //upit je varijabla u koja sadrzi upit
        $rezultat = $this->veza->query($upit);
        if ($this->veza->connect_errno) {
            echo "Greška kod upita: {$upit} - " . $this->veza->connect_errno . ", " .
            $this->veza->connect_error;
            $this->greska = $this->veza->connect_error;
        }
        if (!$rezultat) {
            $rezultat = null;
        }
        return $rezultat;
    }

    function updateDB($upit, $skripta = '') {
        $rezultat = $this->veza->query($upit);
        if ($this->veza->connect_errno) {
            echo "Greška kod upita: {$upit} - " . $this->veza->connect_errno . ", " .
                $this->veza->connect_error;
            $this->greska = $this->veza->connect_error;
        } else {
            if ($skripta != '') {
                header("Location: $skripta");
            }
        }
        return $rezultat;
    }

    function pogreskaDB() { //vraca true ako ima gresku, ako ne vraca false
        if ($this->greska != '') {
            return true;
        } else {
            return false;
        }
    }
}

?>