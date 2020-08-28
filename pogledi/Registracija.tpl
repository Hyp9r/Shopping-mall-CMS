<section id="landing" style="padding-top:20px; margin-bottom:70px;">
    <section class="registracija--container">
        <div class="registracija--main">
            <form action="./php/obradaRegistracije.php" method="post" id="registracijaForma" name="registracijaForma" novalidate>
                    
                    <div class="login--item">
                            <label for="ime">First name</label>
                    </div>
                    <div class="login--item">
                        <input type="text" id="ime" name="Ime" placeholder="Ime">
                    </div>

                    <div class="login--item">
                        <label for="prezime">LastName</label>
                    </div>
                    <div class="login--item">
                        <input type="text" id="prezime" name="Prezime" placeholder="Prezime">
                    </div>

                    <div class="login--item">
                        <label for="godina">Birth date</label>
                    </div>
                    <div class="login--item">
                        <input type="date" id="godina" name="Godina" min="1900" max="2020" value="1995-07-28">
                    </div>

                    <div class="login--item">
                        <label for="korisnicko_ime">Korisničko ime </label>
                    </div>
                    <div class="login--item">
                        <input type="text" id="Korisnicko_ime" name="Korisnicko_ime" maxlength="15" placeholder="Korisničko ime">
                    </div>
                    <!-- email -->
                    <div class="login--item">
                        <label for="email">E-mail</label>
                    </div>
                    <div class="login--item">
                        <input type="email" id="email" name="Email" placeholder="name@foi.hr" >
                    </div>
                    <!-- password -->
                    <div class="login--item">
                        <label for="lozinka">Lozinka </label>
                    </div>
                    <div class="login--item">
                        <input type="password" id="lozinka" name="lozinka" placeholder="Lozinka">
                    </div>
                    <!-- potvrda passworda -->
                    <div class="login--item">
                            <label for="lozinka2">Potvrda lozinke</label>
                    </div>
                    <div class="login--item">
                        <input type="password" id="lozinka2" name="lozinka2" placeholder="Lozinka">
                    </div>
                    <!--Gumbici-->
                    <div class="pogreska--border">
                        <p id="pogreska_output"></p>
                    </div>
                    <div class="login--item">
                        <input  id="btnSendReg" class="prijava--send" type="submit" value="Pošalji">
                        <input class="prijava--reset" type="reset" value="Reset">
                    </div>
            </form>
        </div>
    </section>
</section>