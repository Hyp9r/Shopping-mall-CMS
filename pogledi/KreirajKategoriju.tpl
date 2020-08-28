<section id="landing">
        <section class="registracija--container">
            <div class="kreiraj_trgovinu--main">
                <form action="" method="get" id="kreirajKategorijuForma" name="kreirajKategorijuForma">
                    <div class="login--item">
                        <label for="naziv">Naziv</label>
                    </div>
                    <div class="login--item">
                        <input type="text" id="naziv" name="naziv">
                    </div>
                    <!-- kontakt -->
                    <div class="login--item">
                        <label for="opis">Opis kategorije</label>
                    </div>
                    <div class="login--item">
                        <input type="text" id="opis" name="opis">
                    </div>
                    <div class="login--item">
                        <label for="popust">Popust</label>
                    </div>
                    <div class="login--item">
                        <select id="popust" name="popusti">
                            {foreach from=$popusti item=popust}
                                <option value={$popust.id}>{$popust.postotak}</option>
                            {/foreach}
                        </select>
                    </div>
                    <!--Gumbici-->
                    <div class="login--item space">
                        <a href='' onclick="this.href='?page=kategorije&kreiraj_kategoriju=1&naziv=' + document.getElementById('naziv').value + '&opis=' + document.getElementById('opis').value + '&postotak=' + document.getElementById('popust').options[document.getElementById('popust').selectedIndex].value" class="button--block button--odblokiraj">Dodaj</a>
                    </div>
                </form>
            </div>
        </section>
    </section>