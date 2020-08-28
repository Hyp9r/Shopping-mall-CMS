<section id="landing">
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
            {assign var=counter value=$counter+1}
            {if $counter == 5}
                {assign var=counter value=0}
            {/if}
        {/foreach}
    </section>
</section>