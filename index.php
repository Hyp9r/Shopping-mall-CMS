<?php
    include "./header/header.php";
    include "./controller/Navigacija.php";
    include "./php/baza.class.php";
?>

<!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="./css/style.css" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
    <script src="./js/jQuery.js"></script>
    <title>Trgovački centar</title>
</head>
<body>
    <?php
        $page = null;
        getLinks($smarty);
        if(isset($_GET["page"])){
            $page = $_GET["page"];
        }

        /* $mapping = [
            'registracija' => 'Registracija'
        ];

        foreach ($mapping as $key => $value) {
            if($page === $key)
                include 'controller/' . $value . '.php';
        } */

        switch($page){
            case 'registracija':
            include 'controller/Registracija.php';
            break;
            case 'login':
            if((!isset($_SERVER["HTTPS"])) || $_SERVER["HTTPS"] != "on"){
                $https = "https://" . $_SERVER["SERVER_NAME"] . $_SERVER["REQUEST_URI"];
                header("Location: $https");
                exit();
            }
            include 'controller/Login.php';
            break;
            case 'kategorije':
            include 'controller/Kategorije.php';
            break;
            case 'artikli':
            include 'controller/Artikli.php';
            break;
            case 'odjava':
            include 'controller/Odjava.php';
            break;
            case 'trgovine':
            include 'controller/Trgovine.php';
            break;
            case 'upravljanje_korisnicima':
            include 'controller/Korisnici.php';
            break;
            case 'kosarica':
            include 'controller/Kosarica.php';
            break;
            case 'konfiguracija':
            include 'controller/Konfiguracija.php';
            break;
            case 'dnevnik':
            include 'controller/Dnevnik.php';
            break;
            case 'password_recover':
            include 'controller/ZaboravljenaLozinka.php';
            break;
            case 'moderator':
            include 'controller/Moderator.php';
            break;
            case 'zahtjevi':
            include 'controller/Administrator.php';
            break;
            default:
            include 'controller/Index.php';
            break;
        }
    ?>
            

    <footer>
        <div class="footer">
            <a class="o_autoru" href="ostalo/o_autoru.html">O autoru</a>
            <a class="o_autoru" href="ostalo/dokumentacija.html">Dokumentacija</a>
        </div>
    </footer>
</body>
</html>