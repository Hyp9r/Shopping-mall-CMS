<?php
    include './modeli/Zahtjev.php';
    include './modeli/Artikl.php';
    include './modeli/ActionEnum.php';
    include './modeli/Dnevnik.php';
    $Zahtjev = new Zahtjev();
    $Artikl = new Artikl();
    if(isset($_GET['potvrdi'])){
        $artikl_id = $_GET['artikl_id'];
        $zahtjev_id = $_GET['potvrdi'];
        $Artikl->addTen($artikl_id);
        $Zahtjev->delete($zahtjev_id);
        $log = array("korisnicko" => $_SESSION['korisnik'], "akcija" => ActionEnum::ACCEPT_REQUEST, "dataRow" => 'Nista');
	    Dnevnik::insertLog($log);
    }
	$log = array("korisnicko" => $_SESSION['korisnik'], "akcija" => ActionEnum::REQUEST, "dataRow" => 'Nista');
	Dnevnik::insertLog($log);
    $zahtjevi = $Zahtjev->getAll();
	$smarty->assign('zahtjevi', $zahtjevi);
	$smarty->display('Zahtjev.tpl');
?>