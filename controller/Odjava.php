<?php
    include './modeli/ActionEnum.php';
    include './modeli/Dnevnik.php';
    $log = array("korisnicko" => $_SESSION["korisnik"], "akcija" => ActionEnum::LOGOUT, "dataRow" => 'Nista');
    session_unset();
    session_destroy();
    Dnevnik::insertLog($log);
    header("Location: ./index.php");
?>