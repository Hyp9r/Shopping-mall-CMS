<?php

    function getLinks($smarty){
        if(isset($_SESSION["korisnik"])){
            setTipKorisnika($smarty);
        }else{
            $smarty->assign('tipKorisnika', 0);
            $smarty->display('Navigacija.tpl');
        }
    }


    function setTipKorisnika($smarty){
        $smarty->assign('tipKorisnika', $_SESSION["tip"]);
        $smarty->display('Navigacija.tpl');
    }
?>