<section id="landing">
        <section class="registracija--container">
            <div class="kreiraj_trgovinu--main">
                <form action="" method="get" id="kreirajForma" name="kreirajForma">
                    <div class="login--item">
                        <label for="naziv">Naziv</label>
                    </div>
                    <div class="login--item">
                        <input type="text" id="naziv" name="naziv" maxlength="45" placeholder="Naziv trgovine">
                    </div>
                    <!-- kontakt -->
                    <div class="login--item">
                        <label for="kontakt">Kontakt</label>
                    </div>
                    <div class="login--item">
                        <input type="text" id="kontakt" name="kontakt" placeholder="091-0000-000">
                    </div>
                    <!--Gumbici-->
                    <div class="login--item space">
                        <a href=''  onclick="this.href='?page=trgovine&kreiraj_trgovinu&naziv=' + document.getElementById('naziv').value + '&kontakt=' + document.getElementById('kontakt').value"  class="button--block button--odblokiraj">Dodaj</a>
                    </div>
                </form>
            </div>
        </section>
</section>