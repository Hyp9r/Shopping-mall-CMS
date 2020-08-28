<section id="landing">
    <section class="registracija--container">
        <div class="login--main">
            <div class="login--item">
                <label for="pomak">Pomak</label>
            </div>
            <div class="login--item">
                <input type='number' id="pomak" value={$pomak}>
            </div>

            <div class="login--item">
                <label for="stranicenje">Stranicenje</label>
            </div>
            <div class="login--item">
                <input type='number' id="stranicenje" value={$stranicenje}>
            </div>

            <div class="login--item">
                <a href='?page=konfiguracija&uskladi_vrijeme=1' class="button--block button--odblokiraj">Uskladi vrijeme s FOI</a>
            </div>

            <div class="login--item">
                <a href='' onclick="this.href='?page=konfiguracija&update_pomak=' + document.getElementById('pomak').value + '&stranicenje=' + document.getElementById('stranicenje').value" class="button--block button--odblokiraj">Spremi</a>
            </div>
        </div>
    </section>
</section>