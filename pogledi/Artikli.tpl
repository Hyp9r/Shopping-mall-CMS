<section id="landing">
    <div class="users--container">
        {foreach from=$artikli item=artikl}
            <div class='artikl'>
                <p>{$artikl.naziv}</p>
                <p>{$artikl.opis}</p>
                <p>{$artikl.cijena}</p>
                <p>{$artikl.zaliha}</p>
                <p style="padding-bottom:20px;">{$artikl.trgovina_id}</p>
                <div class='dodaj--kosaricu--container'>
                <a class="dodaj--kosaricu" href='?page=artikli&kategorija_id={$kategorija_id}&dodaj_u_kosaricu={$artikl.id}'>U KOŠARICU</a>
                </div>
            </div>
        {/foreach}
    </div>
</section>