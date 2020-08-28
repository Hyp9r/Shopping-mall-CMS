<?php
require_once "baza.class.php";

function getAllUsers(){
    $veza = new Baza();
    $veza->spojiDB();
    $upit = "SELECT * FROM Korisnik";
    $vraceno = $veza->selectDB($upit);
    if(!$vraceno){
        echo "Pogreska kod dobavljanja svih korisnika";
    }else{
        while($red = mysqli_fetch_array($vraceno)){
            $user_id = $red["id"];
            echo '<div class="user">';
            echo '<p>ID: ' . $red["id"] . '</p>';
            echo '<p>Ime: ' . $red["ime"] . '</p>';
            echo '<p>Prezime: ' . $red["prezime"] . '</p>';
            echo '<p>Datum rođenja ' . $red["datum_rodjenja"] . '</p>';
            echo '<p>Korisnicko ime: ' . $red["korisnicko"] . '</p>';
            echo '<p>Email: ' . $red["email"] . '</p>';
            echo '<p>Lozinka: ' . $red["lozinka"] . '</p>';
            //echo '<p>Lozinka hash: ' . $red["lozinka_hash"] . '</p>';
            echo '<p>Permission level: ' . $red["permission_level"] . '</p>';
            echo '<p>Aktiviran: ' . $red["aktiviran"] . '</p>';
            echo '<p>Broj pokušaja: ' . $red["broj_pokusaja"] . '</p>';
            echo '<p>Blokiran: ' . $red["blokiran"] . '</p>';
            echo "<a href='../administrator/edit_korisnik.php?edit={$user_id}'><button>Edit</button></a>";
            echo "<a href='../administrator/upravljanje_korisnicima.php?delete={$user_id}'><button>Delete</button></a>";
            echo '</div>';
        }
    }

    $veza->zatvoriDB();
}

function getAllUsersForComboBox(){
    $upit = "SELECT id, ime, prezime, korisnicko FROM Korisnik";
    $veza = new Baza();
    $veza->spojiDB();
    $vraceno = $veza->selectDB($upit);
    if(!$vraceno){
        echo "Pogreska kod dobavljanja svih korisnika";
    }else{
        while($red = mysqli_fetch_array($vraceno)){
            $user_id = $red["id"];
            $user_ime = $red["ime"];
            $user_prezime = $red["prezime"];
            $user_korisnicko = $red["korisnicko"];
            echo "<option value={$user_id}>" . $user_ime . " " . $user_prezime . " [" . $user_korisnicko . "]</option>";
        }
    }
    $veza->zatvoriDB();
}

if(isset($_GET["delete"])){
    $id_to_delete = $_GET["delete"];
    $veza = new Baza();
    $veza->spojiDB();
    $upit = "DELETE FROM Korisnik WHERE id= '{$id_to_delete}'";
    $vraceno = $veza->selectDB($upit);
    if(!$vraceno){
        echo "Problem kod brisanja korisnika";
    }
    $veza->zatvoriDB();
    header("Location: ../administrator/upravljanje_korisnicima.php");
}


?>