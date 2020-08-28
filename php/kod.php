<?php
    require_once "./baza.class.php";
    include "../modeli/VirtualnoVrijeme.php";

    if(isset($_GET["email"]) && isset($_GET["kod"])){
        $email = $_GET["email"];
        $kod = $_GET["kod"];

        $upit1 = "SELECT * FROM Korisnik WHERE email='$email'";
        $veza = new Baza();
        $veza->spojiDB();
        $vraceno = $veza->selectDB($upit1);

        $korisnik = mysqli_fetch_assoc($vraceno);
        if(!$vraceno){
            echo "Pogreska kod dobavljanja korisnika";
        }else{
            //korisnik nađen
            $id = $korisnik["id"];
            $aktiviran = 1;
            $VirtualnoVrijeme = new VirtualnoVrijeme();
            $currentDate = $VirtualnoVrijeme->getTime();
            $dateInTime = strtotime($currentDate);
            $time = $dateInTime - (7 * 60 * 60);
            $reg_date = $korisnik["datum_registracije"];
            $dateInTime2 = strtotime($reg_date);
            $timePassed = $time - $dateInTime2;

            if($timePassed > 0){
                //too much time has passed since registration can not activate account
                $deleteQuery = "DELETE FROM Korisnik WHERE email='$email'";
                header( "refresh:2;url=../forms/login.php" );
            }else{
                //activation link still valid
                if($korisnik["aktiviran"] == 0){
                $aktivirajUpit = "UPDATE Korisnik SET aktiviran='$aktiviran', kod = '' WHERE id='$id'";
                    $vraceno2 = $veza->selectDB($aktivirajUpit);
                    if(!$vraceno2){
                        echo "Pogreska kod azuriranja korisnika\n";
                        echo $email;
                        echo $kod;
                        echo " id=" . $id;
                    }
                }else{
                    //korisnik vec aktiviran
                }
            }

        }
        $veza->zatvoriDB();
    }else{
        header("Location: ../forms/registration.php");
    }

?>