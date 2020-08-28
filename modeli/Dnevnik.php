<?php
    include 'VirtualnoVrijeme.php';
    class Dnevnik{

        function getAllLogs(){
            $lista = array();
            $veza = new Baza();
            $veza->spojiDB();
            $upit = "SELECT * FROM Dnevnik";
            $vraceno = $veza->selectDB($upit);
            while($red = mysqli_fetch_array($vraceno)){
                $element = array("id" => $red["id"], "korisnicko" => $red["korisnicko"], "akcija" => $red["akcija"], "vrijeme" => $red["vrijeme"], "dataRow" => $red["dataRow"]);
                array_push($lista, $element);
            }
            $veza->zatvoriDB();
            return $lista;
        }

        public static function insertLog($log){
            $VirtualnoVrijeme = new VirtualnoVrijeme();
            $vrijeme = $VirtualnoVrijeme->getTime();
            $veza = new Baza();
            $veza->spojiDB();
            $upit = "INSERT INTO Dnevnik(korisnicko, vrijeme, akcija, dataRow) VALUES('" . $log['korisnicko'] . "','" . $vrijeme . "','" . $log['akcija'] . "','" . $log['dataRow'] . "')";
            $vraceno = $veza->selectDB($upit);
            if(!$vraceno){
                echo "Pogreska kod insertanja loga";
            }
            $veza->zatvoriDB();
        }

    }
?>