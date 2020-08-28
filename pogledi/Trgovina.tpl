<section id="landing">
    {if $tip == 3}
        <div style="padding-bottom:30px;">
            <a href="?page=trgovine&kreiraj_trgovinu"><input class="effect" type="submit" value="Kreiraj trgovinu +"></a>
        </div>
        <div style="padding-bottom:30px;">
            <a href="?page=trgovine&dodaj_moderatora"><input class="effect" type="submit" value="Dodaj moderatora +"></a>
        </div>
        <div style="padding-bottom:30px;">
            <a href="?page=trgovine&kreiraj_popust"><input class="effect" type="submit" value="Kreiraj popust +"></a>
        </div>
    {elseif $tip == 2}
        <div style="padding-bottom:30px;">
            <a href="?page=kategorije&kreiraj_kategoriju"><input class="effect" type="submit" value="Kreiraj Kategoriju +"></a>
        </div>
    {/if}
    <section id="stores">
        {foreach from=$trgovine item=trgovina}
            <div class='store' style="background-color:{$color[$counter]};">
                <p>{$trgovina.naziv}</p>
                <h4> {$trgovina.kontakt}</h4>
                <br>
                <a href='?page=trgovine&trgovina_id={$trgovina.id}'>
                Uđi u trgovinu ->'
                </a>
            </div>
            {assign var=counter value=$counter+1}
            {if $counter == 5}
                {assign var=counter value=0}
            {/if}
        {/foreach}
    </section>
</section>