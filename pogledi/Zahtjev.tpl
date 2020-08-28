<section id="landing">
	<p style="letter-spacing:1.3px; font-size:30px; font-weight:400; text-align:left; margin-left:150px;">Zahtjevi</p>
	<div style="margin: 0 150px;">
                <table id="tablicaZahtjevi" class="display">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Korisnicko ime</th>
                            <th>Artikl_ID</th>
                            <th>Potvrdi</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$zahtjevi item=zahtjev}
                            <tr>
                            <td>{$zahtjev.id}</td>
                            <td>{$zahtjev.korisnicko}</td>
                            <td>{$zahtjev.artikl_id}</td>
                            <td><a class="button--odblokiraj button--block" href="?page=zahtjevi&potvrdi={$zahtjev.id}&artikl_id={$zahtjev.artikl_id}">Potvrdi</a></td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
    </div>
</section>