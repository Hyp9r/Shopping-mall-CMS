<?php
    include "./modeli/Korisnik.php";
    include "./modeli/Dnevnik.php";
    include "./modeli/ActionEnum.php";
    $log = array("korisnicko" => $_SESSION["korisnik"], "akcija" => ActionEnum::UPRAVLJANJE_KORISNICIMA, "dataRow" => 'Nista');
    Dnevnik::insertLog($log);
    $Korisnik = new Korisnik();
    if(isset($_GET["blokiraj"])){
        $log = array("korisnicko" => $_SESSION["korisnik"], "akcija" => ActionEnum::BLOCK, "dataRow" => 'Nista');
        Dnevnik::insertLog($log);
        $Korisnik->blockUser($_GET["blokiraj"]);
    }else if(isset($_GET["odblokiraj"])){
        $log = array("korisnicko" => $_SESSION["korisnik"], "akcija" => ActionEnum::UNBLOCK, "dataRow" => 'Nista');
        Dnevnik::insertLog($log);
        $Korisnik->unblockUser($_GET["odblokiraj"]);
    }
    $korisnici = $Korisnik->getAllUsers();
    $smarty->assign('korisnici', $korisnici);
    $smarty->display('UpravljanjeKorisnicima.tpl');
?>