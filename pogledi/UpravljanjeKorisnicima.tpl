<section id="tablicaBackground">
        <div class="users--table--container" style="margin:50px 150px">
            <table id="tablicaKorisnici" class="display">
                <thead>
                    <tr>
                        <th>Ime</th>
                        <th>Prezime</th>
                        <th>Email</th>
                        <th>Korisnicko</th>
                        <th>Broj pokusaja</th>
                        <th>Blokiran</th>
                    </tr>
                </thead>
                <tbody>
                    
                    {foreach from=$korisnici item=korisnik}
                        <tr>
                        <td>{$korisnik.ime}</td>
                        <td>{$korisnik.prezime}</td>
                        <td>{$korisnik.email}</td>
                        <td>{$korisnik.korisnicko}</td>
                        <td>{$korisnik.broj_pokusaja}</td>

                        {if $korisnik.blokiran == 1}
                        <td><a class="button--odblokiraj button--block" href="?page=upravljanje_korisnicima&odblokiraj={$korisnik.id}">Odblokiraj</a></td>
                        {else}
                        <td><a class="button--blokiraj button--block" href="?page=upravljanje_korisnicima&blokiraj={$korisnik.id}">Blokiraj</a></td>
                        {/if}
                        
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
        
            {* <a href='../administrator/edit_korisnik.php?edit={$user_id}'><button>Edit</button></a>
            <a href='../administrator/upravljanje_korisnicima.php?delete={$user_id}'><button>Delete</button></a> *}
</section>