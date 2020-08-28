<?php
    
    class VirtualnoVrijeme{

        function getTimeShiftFOI(){
            $json = json_decode(file_get_contents("http://barka.foi.hr/WebDiP/pomak_vremena/pomak.php?format=json"), true);
            $pomakVremena = $json['WebDiP']['vrijeme']['pomak']['brojSati'];
            return $pomakVremena;
        }

        function getTimeShift(){
            $veza = new Baza();
            $veza->spojiDB();
            if($veza->pogreskaDB()){
                echo "Pogreska kod spajanja na bazu";
            }
            $upit = "SELECT * FROM Konfiguracija";
            $vraceno = $veza->selectDB($upit);
            $red = mysqli_fetch_assoc($vraceno);
            $pomakVremena = $red["pomak"];
            if(!$vraceno){
                echo "Pogreskaaa";
            }
            $veza->zatvoriDB();
            return $pomakVremena;
        }

        function insertTimeShift($shift){
            $veza = new Baza();
            $veza->spojiDB();
            if($veza->pogreskaDB()){
                echo "Pogreska kod spajanja na bazu";
            }
            $upit = "INSERT INTO Konfiguracija(pomak) VALUES('" . $shift . "')";
            $vraceno = $veza->selectDB($upit);
            if(!$vraceno){
                echo "Pogreskaaa";
            }
            $veza->zatvoriDB();
        }

        function getTime(){
            return date('Y-m-d H:m:s', time() + self::getTimeShift() * 60 * 60);
        }


    }

?>