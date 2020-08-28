<?php
    include "./modeli/Korisnik.php";
    include "./modeli/Dnevnik.php";
    include "./modeli/ActionEnum.php";
    if(isset($_GET['email'])){
        if(isset($_GET['aktiviran'])){
            $smarty->assign('email', $_GET["email"]);
            $smarty->display('ResetPassword.tpl');
        }else if(isset($_GET["pw"])){
            //ovdje handlaj za reset passworda preko baze
            handlePasswordChange($_GET["pw"]);
        }else{
            sendEmail();
        }
    }else{
        $smarty->display('ZaboravljenaLozinka.tpl');
    }

    function handlePasswordChange($lozinka){
        $email = $_GET["email"];
        $Korisnik = new Korisnik();
        $Korisnik->changePassword($lozinka, $email);
        $log = array("korisnicko" => $email, "akcija" => ActionEnum::CHANGE_PASSWORD, "dataRow" => 'Nista');
        Dnevnik::insertLog($log);
    }

    function sendEmail(){
        $email = $_GET['email'];
        $from = 'tkeskic@foi.hr';
        $subject = 'Zaboravljena lozinka';
        $body = "Kliknite na link da biste postavili novu lozinku\r\n http://barka.foi.hr/WebDiP/2019_projekti/WebDiP2019x062/index.php?page=password_recover&email=$email" . "&aktiviran=1";
        if(mail($email, $subject, $body, $from)){
            echo "Uspješno poslan mail";
        }else{
            echo "Problem kod slanja maila";
        }
        $log = array("korisnicko" => $email, "akcija" => ActionEnum::PASSWORD_EMAIL, "dataRow" => 'Nista');
        Dnevnik::insertLog($log);
    }
?>