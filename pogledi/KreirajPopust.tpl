<section id="landing">
        <section class="registracija--container">
            <div class="kreiraj_trgovinu--main">
                <form action="./kreiraj_popust_skripta.php" method="post" id="kreirajPopustForma" name="kreirajPopustForma">
                    <div class="login--item">
                        <label for="postotak">Postotak</label>
                    </div>
                    <div class="login--item">
                        <input type="number" id="postotak" name="postotak">
                    </div>
                    <!-- kontakt -->
                    <div class="login--item">
                        <label for="vrijedi_od">Vrijedi od:</label>
                    </div>
                    <div class="login--item">
                        <input type="date" id="vrijedi_od" name="vrijedi_od">
                    </div>
                    <div class="login--item">
                        <label for="vrijedi_do">Vrijedi do:</label>
                    </div>
                    <div class="login--item">
                        <input type="date" id="vrijedi_do" name="vrijedi_do">
                    </div>
                    <!--Gumbici-->
                    <div class="login--item space">
                        <a href='' onclick="this.href='?page=trgovine&kreiraj_popust=1&postotak=' + document.getElementById('postotak').value + '&vrijedi_od=' + document.getElementById('vrijedi_od').value + '&vrijedi_do=' + document.getElementById('vrijedi_do').value" class="button--block button--odblokiraj">Dodaj</a>
                    </div>
                </form>
            </div>
        </section>
</section>