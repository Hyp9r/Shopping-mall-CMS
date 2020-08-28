<?php
    include "./modeli/Artikl.php";
    $Artikl = new Artikl();
    $kategorija_id = null;
    if(isset($_GET["kategorija_id"])){
        $kategorija_id = $_GET["kategorija_id"];
    }
    if(isset($_GET["dodaj_u_kosaricu"])){
        $artikl_za_dodat_id = $_GET["dodaj_u_kosaricu"];
        $artikl_za_dodat = $Artikl->getArtikl($artikl_za_dodat_id);
        array_push($_SESSION["kosarica"], $artikl_za_dodat);
    }
    $artikli = $Artikl->getAll($kategorija_id);
    $smarty->assign('artikli', $artikli);
    $smarty->assign('kategorija_id', $kategorija_id);
    $smarty->display('Artikli.tpl');
?>