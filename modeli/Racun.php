<?php

    class Racun{


        function insert($racun){
            $veza = new Baza();
            $veza->spojiDB();
            $upit = "INSERT INTO Racun(korisnik_id, datum, ukupno) VALUES('" . $racun['korisnik_id'] . "','" . $racun['datum'] . "','" . $racun['ukupno'] . "')";
            $vraceno = $veza->selectDB($upit);
            if(!$vraceno){
                echo "Pogreska kod insertanja racuna";
            }else{
                echo "Racun dodan";
            }
            $veza->zatvoriDB();
        }
    
        function delete($id){
            $veza = new Baza();
            $veza->spojiDB();
            $upit = "DELETE FROM Racun WHERE id='{$id}'";
            $vraceno = $veza->selectDB($upit);
            if(!$vraceno){
                echo "Pogreska kod brisanja racuna";
            }else{
                echo "Racun obrisan";
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
            $upit = "SELECT * FROM Racun";
            $vraceno = $veza->selectDB($upit);
            while($red = mysqli_fetch_array($vraceno)){
                $element = array("id" => $red["id"], "korisnik_id" => $red["korisnik_id"], "datum" => $red["datum"], "ukupno" => $red["ukupno"], "placen" => $red["placen"]);
                array_push($lista, $element);
            }
            $vraceno->close();
            $veza->zatvoriDB();
            return $lista;
        }


    }



?>