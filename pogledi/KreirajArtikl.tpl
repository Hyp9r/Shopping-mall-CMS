<section id="landing">
        <section class="registracija--container">
            <div class="kreiraj_trgovinu--main" style="padding-bottom:130px;>
                <form action="" method="get" id="kreirajKategorijuForma" name="kreirajKategorijuForma">
                    <div class="login--item">
                        <label for="naziv">Naziv</label>
                    </div>
                    <div class="login--item">
                        <input type="text" id="naziv" name="naziv">
                    </div>
                    <!-- kontakt -->
                    <div class="login--item">
                        <label for="opis">Opis artikla</label>
                    </div>
                    <div class="login--item">
                        <input type="text" id="opis" name="opis">
                    </div>
                    <div class="login--item">
                        <label for="cijena">Cijena</label>
                    </div>
                    <div class="login--item">
                        <input type="number" id="cijena" name="cijena">
                    </div>
                    <div class="login--item">
                        <label for="zaliha">Zaliha</label>
                    </div>
                    <div class="login--item">
                        <input type="number" id="zaliha" name="zaliha">
                    </div>

                    <div class="login--item">
                        <label for="kategorija">Kategorija</label>
                    </div>
                    <div class="login--item">
                        <select id="kategorija_id" name="kategorija_id">
                            {foreach from=$kategorije item=kategorija}
                                <option value={$kategorija.id}>{$kategorija.naziv}</option>
                            {/foreach}
                        </select>
                    </div>
                    <!--Gumbici-->
                    <div class="login--item space">
                        <a href='' onclick="this.href='?page=moderator&kreiraj_artikl=1&naziv=' + document.getElementById('naziv').value + '&opis=' + document.getElementById('opis').value + '&cijena=' + document.getElementById('cijena').value  + '&zaliha=' + document.getElementById('zaliha').value + '&kategorija_id=' + document.getElementById('kategorija_id').options[document.getElementById('kategorija_id').selectedIndex].value" class="button--block button--odblokiraj">Dodaj</a>
                    </div>
                </form>
            </div>
        </section>
    </section>