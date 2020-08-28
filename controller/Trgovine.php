<?php
    include "./modeli/Trgovina.php";
    include "./modeli/Dnevnik.php";
    include "./modeli/ActionEnum.php";
    include "./modeli/Korisnik.php";
    include "./modeli/Popust.php";
    $korisnik;
    $Trgovina = new Trgovina();
    $Korisnik = new Korisnik();
    if(isset($_SESSION["korisnik"])){
        $korisnik = $_SESSION["korisnik"];
        $tipKorisnika = $_SESSION["tip"];
    }else{
        $korisnik = $_SERVER['REMOTE_ADDR'];
        $tipKorisnika = 0;
    }

    if(isset($_GET['kreiraj_trgovinu'])){
        if(isset($_GET['naziv']) && isset($_GET['kontakt'])){
            //kreiraj novu trgovinu
            $Trgovina->createStore($_GET['naziv'], $_GET['kontakt']);
            $log = array("korisnicko" => $korisnik, "akcija" => ActionEnum::CREATE_SHOP, "dataRow" => 'Nista');
            Dnevnik::insertLog($log);
        }else{
            $smarty->display('KreirajTrgovinu.tpl');
        }
    }elseif(isset($_GET['dodaj_moderatora'])){
        if(isset($_GET['trgovina_id']) && isset($_GET['korisnik_id'])){
            $Korisnik->addModerator($_GET['trgovina_id'], $_GET['korisnik_id']);
            $log = array("korisnicko" => $korisnik, "akcija" => ActionEnum::CREATE_MODERATOR, "dataRow" => $_GET['trgovina_id'] . " " . $_GET['korisnik_id']);
            Dnevnik::insertLog($log);
        }
        $trgovine = $Trgovina->getAllStores();
        $korisnici = $Korisnik->getAllUsers();
        $smarty->assign('trgovine', $trgovine);
        $smarty->assign('korisnici', $korisnici);
        $smarty->display('DodajModeratora.tpl');
    }elseif(isset($_GET['kreiraj_popust'])){
        if(isset($_GET['postotak'])){
            $Popust = new Popust();
            $Popust->insertPopust($_GET['postotak'], $_GET['vrijedi_od'], $_GET['vrijedi_do']);
        }else{
            $smarty->display('KreirajPopust.tpl');
        }
    }


    $log = array("korisnicko" => $korisnik, "akcija" => ActionEnum::VIEW_SHOPS, "dataRow" => 'Nista');
    Dnevnik::insertLog($log);
    $colors = array("#ffeaa7","#fab1a0","#ff7675", "#fd79a8", "#636e72");
    $trgovine = $Trgovina->getAllStores();
    $smarty->assign('trgovine', $trgovine);
    $smarty->assign('color', $colors);
    $smarty->assign('counter', 0);
    $smarty->assign('tip', $tipKorisnika);
    $smarty->display('Trgovina.tpl');
?>