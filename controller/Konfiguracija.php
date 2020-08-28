<?php
    include './modeli/Konfiguracija.php';
    include './modeli/ActionEnum.php';
    include './modeli/Dnevnik.php';
    $Konfiguracija = new Konfiguracija();
    if(isset($_GET["update_pomak"])){
        $log = array("korisnicko" => $_SESSION["korisnik"], "akcija" => ActionEnum::CHANGE_CONFIG, "dataRow" => 'Nista');
        Dnevnik::insertLog($log);
        $updateConfig = array('pomak' => $_GET['update_pomak'], 'stranicenje' => $_GET['stranicenje'], 'trajanje_sesije' => 1);
        $Konfiguracija->updateConfig($updateConfig);
    }else if(isset($_GET["uskladi_vrijeme"])){
        //uzmi vrijeme od foia
        $log = array("korisnicko" => $_SESSION["korisnik"], "akcija" => ActionEnum::CHANGE_CONFIG, "dataRow" => 'Nista');
        Dnevnik::insertLog($log);
        $Virtualno = new VirtualnoVrijeme();
        $updatePomak = $Virtualno->getTimeShiftFOI();
        $Konfiguracija->insertShift($updatePomak);
    }
    $config = $Konfiguracija->getConfig();
    $pomak = $config['pomak'];
    $stranicenje = $config['stranicenje'];
    $smarty->assign('stranicenje', $stranicenje);
    $smarty->assign('pomak', $pomak);
    $smarty->display('Konfiguracija.tpl');
?>