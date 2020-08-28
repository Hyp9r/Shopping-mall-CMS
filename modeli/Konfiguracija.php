<?php

    class Konfiguracija{

        function getConfig(){
            $veza = new Baza();
            $veza->spojiDB();
            $upit = "SELECT * FROM Konfiguracija";
            $vraceno = $veza->selectDB($upit);
            $red = mysqli_fetch_assoc($vraceno);
            if(!$red){
                echo "Au";
            }
            $config = $red;
            $veza->zatvoriDB();
            return $config;
        }

        function updateConfig($updateConfig){
            $pomak = $updateConfig["pomak"];
            $stranicenje = $updateConfig["stranicenje"];
            $trajanje_sesije = $updateConfig["trajanje_sesije"];
            $veza = new Baza();
            $veza->spojiDB();
            $upit = "UPDATE Konfiguracija SET pomak = '$pomak', stranicenje = '$stranicenje' WHERE id = '1'";//za dovrsit
            $vraceno = $veza->selectDB($upit);
            if(!$vraceno){
                echo "Au";
            }
            $veza->zatvoriDB();
        }

        function insertShift($pomak){
            $veza = new Baza();
            $veza->spojiDB();
            $upit = "UPDATE Konfiguracija SET pomak = '$pomak' WHERE id = '1'";
            $vraceno = $veza->selectDB($upit);
            if(!$vraceno){
                echo "Au";
            }
            $veza->zatvoriDB();
        }

    }

?>