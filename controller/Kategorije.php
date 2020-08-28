<?php
    include "./modeli/Kategorija.php";
    include "./modeli/Dnevnik.php";
    include "./modeli/ActionEnum.php";
    include "./modeli/Popust.php";
    $korisnik;
    $Kategorija = new Kategorija();
    $Popust = new Popust();
    $popusti = $Popust->getAll();

    if(isset($_SESSION["korisnik"])){
        $korisnik = $_SESSION["korisnik"];
    }else{
        $korisnik = $_SERVER['REMOTE_ADDR'];
    }


    if(isset($_GET['kreiraj_kategoriju'])){
        if(isset($_GET['naziv']) && isset($_GET['opis']) && isset($_GET['postotak'])){
            $Kategorija->insert($_GET['naziv'], $_GET['opis'], $_GET['postotak']);
            $log = array("korisnicko" => $korisnik, "akcija" => ActionEnum::CREATE_CATEGORY, "dataRow" => 'Nista');
            Dnevnik::insertLog($log);
        }else{
            $smarty->assign('popusti', $popusti);
            $smarty->display('KreirajKategoriju.tpl');
        }
    }

    $log = array("korisnicko" => $korisnik, "akcija" => ActionEnum::VIEW_CATEGORIES, "dataRow" => 'Nista');
    Dnevnik::insertLog($log);
    $colors = array("#ffeaa7","#fab1a0","#ff7675", "#fd79a8", "#636e72");
    $kategorije = $Kategorija->getAllCategories();
    $smarty->assign('kategorije', $kategorije);
    $smarty->assign('color', $colors);
    $smarty->assign('counter', 0);
    $smarty->display('Kategorija.tpl');
?>