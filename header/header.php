<?php
    session_start();

    /*Smarty inicijalizacija*/
    require "./lib/Smarty/Smarty.class.php";
    $smarty = new Smarty();
    $smarty->template_dir='./pogledi';
    $smarty->compile_dir='./pogledi/smarty/compiled_pogledi';
    $smarty->config_dir='./pogledi/smarty/configs';
    $smarty->cache_dir='./pogledi/smarty/cache';
?>