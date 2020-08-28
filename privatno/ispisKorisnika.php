<!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/style.css" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;700&display=swap" rel="stylesheet">
    <title>Ispis korisnika .htaccess</title>
</head>
<body>
    <section id=landing>
    <div style="margin:0 150px; background-color:black;">
    <?php
        include "../php/baza.class.php";
        function getAllUsers(){
            $lista = array();
            $veza = new Baza();
            $veza->spojiDB();
            if($veza->pogreskaDB()){
                echo "Pogreska kod spajanja na bazu";
            }
            $upit = "SELECT * FROM Korisnik";
            $vraceno = $veza->selectDB($upit);
            while($red = mysqli_fetch_array($vraceno)){
                $element = array("id" => $red["id"], "ime" => $red["ime"], "prezime" => $red["prezime"], "email" => $red["email"], "korisnicko" => $red["korisnicko"], "lozinka" => $red["lozinka"]);
                array_push($lista, $element);
            }
            $vraceno->close();
            $veza->zatvoriDB();
            return $lista;
        }
        $korisnici = getAllUsers();
    ?>
    <table>
                    <thead>
                        <tr>
                            <th>Korisnicko ime</th>
                            <th>Ime</th>
                            <th>Prezime</th>
                            <th>Email</th>
                            <th>Lozinka</th>
                        </tr>
                    </thead>
                    <tbody>
                            <?php
                                foreach ($korisnici as $korisnik) {
                                    echo '<tr>';
                                    echo '<td>' . $korisnik["korisnicko"] . '</td>';
                                    echo '<td>' . $korisnik["ime"] . '</td>';
                                    echo '<td>' . $korisnik["prezime"] . '</td>';
                                    echo '<td>' . $korisnik["email"] . '</td>';
                                    echo '<td>' . $korisnik["lozinka"] . '</td>';
                                    echo '</tr>';
                                }
                            ?>
                    </tbody>
    </table>
    </div>
    </section>
    <footer>
        <div class="footer">
            <a class="o_autoru" href="../ostalo/o_autoru.html">O autoru</a>
            <a class="o_autoru" href="../ostalo/dokumentacija.html">Dokumentacija</a>
        </div>
    </footer>
</body>
</html>