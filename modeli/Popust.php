<?php

    class Popust{


        function insertPopust($postotak, $vrijedi_od, $vrijedi_do){
            $veza = new Baza();
            $veza->spojiDB();
            $upit = "INSERT INTO Popusti(postotak, vrijedi_od, vrijedi_do) VALUES('" . $postotak . "','" . $vrijedi_od . "','" . $vrijedi_do . "')";
            $vraceno = $veza->selectDB($upit);
            if(!$vraceno){
                echo "Pogreska kod insertanja loga";
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
            $upit = "SELECT * FROM Popusti";
            $vraceno = $veza->selectDB($upit);
            while($red = mysqli_fetch_array($vraceno)){
                $element = array("id" => $red["id"], "postotak" => $red["postotak"], "vrijedi_od" => $red["vrijedi_od"], "vrijedi_do" => $red["vrijedi_do"]);
                array_push($lista, $element);
            }
            $vraceno->close();
            $veza->zatvoriDB();
            return $lista;
        }

    }

?>