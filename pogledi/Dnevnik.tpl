<section id="landing">
	<div style="margin: 0 150px;">
                <table id="tablicaDnevnik" class="display">
                    <caption style="background-color: black; color:white;">Dnevnik</caption>
                    <thead style="background-color:black; color:white;">
                        <tr>
                            <th>ID</th>
                            <th>Korisnik</th>
                            <th>Vrijeme</th>
                            <th>Akcija</th>
                            <th>DataRow</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$logovi item=log}
                            <tr>
                            <td>{$log.id}</td>
                            <td>{$log.korisnicko}</td>
                            <td>{$log.vrijeme}</td>
                            <td>{$log.akcija}</td>
                            <td>{$log.dataRow}</td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
    </div>
</section>