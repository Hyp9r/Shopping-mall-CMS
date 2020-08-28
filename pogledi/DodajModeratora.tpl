<section id="landing">
        <section class="registracija--container">
            <div class="kreiraj_trgovinu--main">
                <form action="" method="get" id="dodajModeratoraForma" name="dodajModeratoraForma">
                    <div class="login--item">
                        <label for="trgovina_id">Trgovina</label>
                    </div>
                    <div class="login--item">
                        <select id="trgovina_id" name="trgovine">
                            {foreach from=$trgovine item=trgovina}
                                <option value={$trgovina.id}>{$trgovina.naziv}</option>
                            {/foreach}
                        </select>
                    </div>
                    <div class="login--item">
                        <label for="moderator_id">Moderator</label>
                    </div>
                    <div class="login--item">
                        <select id="moderator_id" name="moderatori">
                            {foreach from=$korisnici item=korisnik}
                                <option value={$korisnik.id}>{$korisnik.ime}:{$korisnik.prezime}[{$korisnik.korisnicko}]</option>";
                            {/foreach}
                        </select>
                    </div>
                    <!--Gumbici-->
                    <div class="login--item space">
                        <a href='' onclick="this.href='?page=trgovine&dodaj_moderatora=1&trgovina_id=' + document.getElementById('trgovina_id').options[document.getElementById('trgovina_id').selectedIndex].value + '&korisnik_id=' + document.getElementById('moderator_id').options[document.getElementById('moderator_id').selectedIndex].value" class="button--block button--odblokiraj">Dodaj</a>
                    </div>
                </form>
            </div>
        </section>
</section>