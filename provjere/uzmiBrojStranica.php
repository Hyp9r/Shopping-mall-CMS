<?php
    require '../php/baza.class.php';
    $veza = new Baza();
    $veza->spojiDB();
    $upit = "SELECT * FROM Konfiguracija";
    $vraceno = $veza->selectDB($upit);
    $red = mysqli_fetch_assoc($vraceno);
    $veza->zatvoriDB();
    $broj = $red["stranicenje"];
    echo $broj;
?>