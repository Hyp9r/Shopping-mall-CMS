<section id="landing">

    <h2 id="landing-text">Dobro došli u trgovački centar</h2>

    <form action="">
        <a href='?page=registracija'>Registracija   ▷</a>
    </form>

    <h2 id="kategorije-text">Odaberite kategoriju proizvoda</h2>
    
    <section id="stores">
        
        {foreach from=$kategorije item=kategorija}
            <div class='store' style="background-color:{$color[$counter]};">
                <p>{$kategorija.naziv}</p>
                <h4> {$kategorija.popust} % Popusta</h4>
                <br>
                <a href='?page=artikli&kategorija_id={$kategorija.id}'>
                Više detalja ->'
                </a>
            </div>
            {if $counter >= 5}
                {assign var=counter value=0}
            {else}
                {assign var=counter value=$counter+1}
            {/if}
        {/foreach}


    </section>
        
    <section>
        <a href="?page=kategorije"><button class="sveKategorije">Vidi sve kategorije</button></a>
    </section>

</section>