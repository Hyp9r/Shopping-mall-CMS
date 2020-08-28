<?php
    include './modeli/Artikl.php';
    include './modeli/Zahtjev.php';
    include './modeli/Dnevnik.php';
    include './modeli/Kategorija.php';
    include './modeli/ActionEnum.php';
    $Artikl = new Artikl();
    $Zahtjev = new Zahtjev();
    $Kategorija = new Kategorija();
    $kategorije = $Kategorija->getAllCategories();
    $artikli = $Artikl->getAllItems();
    if(isset($_GET['naruci'])){
        $artikl_id = $_GET['naruci'];
        $Zahtjev->insert($_SESSION['korisnik'] ,$artikl_id);
        $log = array("korisnicko" => $korisnik, "akcija" => ActionEnum::REQUEST, "dataRow" => 'Nista');
        Dnevnik::insertLog($log);
    }elseif(isset($_GET['kreiraj_artikl'])){
        if(isset($_GET['naziv']) && isset($_GET['opis']) && isset($_GET['cijena']) && isset($_GET['zaliha']) && isset($_GET['kategorija_id'])){
            $Artikl->insert($_GET['naziv'], $_GET['opis'], $_GET['cijena'], $_GET['zaliha'], $_GET['kategorija_id']);
            $log = array("korisnicko" => $_SESSION['korisnik'], "akcija" => ActionEnum::CREATE_ITEM, "dataRow" => 'Nista');
            Dnevnik::insertLog($log);
        }
        $smarty->assign('kategorije', $kategorije);
        $smarty->display('KreirajArtikl.tpl');
    }else{
        $smarty->assign('artikli', $artikli);
        $smarty->display('Moderator.tpl');
    }
?>