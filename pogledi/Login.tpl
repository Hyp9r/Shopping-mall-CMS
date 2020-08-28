<section id="landing">
    <section class="registracija--container">
        <div class="login--main">
            <form action="./php/obradaPrijave.php" method="post" id="loginForma" name="loginForma">
                <div class="login--item">
                    <label for="korisnicko_ime">Korisničko ime </label>
                </div>
                <div class="login--item">
                    <input type="text" id="korisnicko_ime" name="Korisnicko_ime" maxlength="15" placeholder="Korisničko ime">
                </div>
                    <!-- password -->
                <div class="login--item">
                    <label for="lozinka">Lozinka </label>
                </div>
                <div class="login--item">
                    <input type="password" id="lozinka" name="lozinka" placeholder="Lozinka">
                </div>
                <div class="forgot--password">
                    <a href="?page=password_recover">Zaboravljena lozinka?</a>
                </div>
                    <!--Gumbici-->
                <div class="login--item space">
                    <input class="prijava--send" type="submit" value="Pošalji" name="submit">
                <input class="prijava--reset" type="reset" value="Reset">
                </div>
            </form>
        </div>
    </section>
</section>