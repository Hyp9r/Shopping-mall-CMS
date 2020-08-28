<?php
    if(isset($_POST["Kolicina"])){
        $kolicina = $_POST['Kolicina'];
        $cijena = $_POST['Cijena'];
        $index = $_POST['Index'];
        $popust = $_POST['Popust'];
        $popustom = $kolicina * $cijena * (1 - $popust / 100);
        $ukupno = $kolicina * $cijena;
        $podatci = array('ukupno' => $ukupno, 'popustom' => $popustom);
        echo json_encode($podatci);
    }

?>
