<section id="landing">
	<p style="letter-spacing:1.3px; font-size:30px; font-weight:400; text-align:left; margin-left:150px;">Košarica</p>
	<div style="margin: 0 150px;">
                <table id="tablicaKosarica" class="display">
                    <thead>
                        <tr>
                            <th>Slika</th>
                            <th>Naziv artikla</th>
                            <th>Cijena</th>
                            <th>Količina</th>
                            <th>Ukupno</th>
                            <th>Popust</th>
                            <th>Sa popustom</th>
                            <th>-</th>
                        </tr>
                    </thead>
                    <tbody class="table__body">
                        {foreach from=$artikli item=artikl}
                            <tr>
                            <td>{$artikl.index}</td>
                            <td>{$artikl.naziv}</td>
                            <td class='cijena'>{$artikl.cijena}</td>
                            <td><input class="kolicina" id="kol" type="number" min='1' max={$artikl.zaliha} value={$artikl.kolicina}></td>
                            <td>{$artikl.kolicina * $artikl.cijena}</td>
                            <td>{$artikl.popust}%</td>
                            <td id='glavnaCijena' name='glavnaCijena'>{$artikl.kolicina * $artikl.cijena * (1 - $artikl.popust / 100)} </td>
                            <td><a class="button--blokiraj button--block" href="?page=kosarica&obrisi_iz_kosarice={$artikl.index}">Obriši</a></td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
    </div>
    <div style="padding-bottom:30px;">
            <h1 id='racun'>Ukupno: </h1>
    </div>
    <div style="padding-bottom:30px;">
            <a href="?page=kosarica&plati=1" class="button--odblokiraj button--kupi">Kupi</a>
    </div>
</section>



<script>

    $(document).ready(function() {
        $('.table__body').on('change', '.kolicina', function(){
            var racun = 0;
            const currentrow = $(this).closest('tr');
            const valueKolicina = currentrow.find('td:eq(3)').children('#kol').val();
            const valueCijena = currentrow.find('td:eq(2)').text();
            const ukupnoField = currentrow.find('td:eq(4)');
            const sPopustomField = currentrow.find('td:eq(6)');
            //var index = currentrow.find('td:eq(0)').text();
            var index = '0';
            let popust = currentrow.find('td:eq(5)').text().split('%')[0];
            calculateTotal(valueKolicina, valueCijena, ukupnoField, index, popust, sPopustomField);
        });

        
    });


    function calculateTotal(kolicina, cijena, ukupnoField, index, popust, sPopustomField){
        $.ajax({
            type: 'POST',
            url: './controller/KosaricaJSON.php',
            data: {
                Kolicina : kolicina,
                Cijena : cijena,
                Index : index,
                Popust : popust
            },
            success: function(json){
                //napravi nesto s podatcima
                var podatci = jQuery.parseJSON(json);
                ukupnoField.html(podatci.ukupno);
                sPopustomField.html(podatci.popustom + " ");
                var racun = 0;


                $('.table__body').each(function(){
                    var row = $(this).find('tr');
                    var popust = row.find('td:eq(6)').text().split(' ');
                    for(let i = 0; i<popust.length; i++){
                        console.log(popust[i]);
                        var popust2 = parseInt(popust[i]);
                        racun += popust2;
                    }
                    $('#racun').innerHTML = racun;
                });
                    alert(racun);
            }
        });
    }

</script>
