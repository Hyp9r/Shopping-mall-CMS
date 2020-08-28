<section id="landing">
    <div style="padding-bottom:30px;">
            <a href="?page=moderator&kreiraj_artikl=1"><input class="effect" type="submit" value="Kreiraj Artikl +"></a>
    </div>
	<p style="letter-spacing:1.3px; font-size:30px; font-weight:400; text-align:left; margin-left:150px;">Artikli</p>
	<div style="margin: 0 150px;">
                <table id="tablicaArtikli" class="display">
                    <thead>
                        <tr>
                            <th>Naziv</th>
                            <th>Opis artikla</th>
                            <th>Cijena</th>
                            <th>Zaliha</th>
                            <th>Zahtjev</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$artikli item=artikl}
                            <tr>
                            <td>{$artikl.naziv}</td>
                            <td>{$artikl.opis}</td>
                            <td>{$artikl.cijena}</td>
                            {if $artikl.zaliha == 0}
                            <td style="color:red;">{$artikl.zaliha}</td>
                            {else}
                            <td>{$artikl.zaliha}</td>
                            {/if}
                            <td><a class="button--odblokiraj button--block" href="?page=moderator&naruci={$artikl.id}">Naruči</a></td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
    </div>
</section>