<?php
    include "./modeli/Dnevnik.php";
    $dnevnik = new Dnevnik();
    $logovi = $dnevnik->getAllLogs();
    $smarty->assign('logovi', $logovi);
    $smarty->display('Dnevnik.tpl');
?>