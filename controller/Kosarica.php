<?php
	include './modeli/Kosarica.php';
	//include './modeli/StavkaRacun.php';
	//include './modeli/Racun.php';
	include './modeli/VirtualnoVrijeme.php';

	$Kosarica = new Kosarica();
	$VirtualnoVrijeme = new VirtualnoVrijeme();
	//$Racun = new Racun();
	//$StavkaRacun = new StavkaRacun();
	$artikliKosarica = $Kosarica->getItems();
	if(isset($_GET['obrisi_iz_kosarice'])){
		$index = $_GET['obrisi_iz_kosarice'];
		$Kosarica->remove($index);
	}elseif(isset($_GET['plati'])){
		$log = array("korisnicko" => $korisnik, "akcija" => ActionEnum::CHECKOUT, "dataRow" => 'Nista');
		Dnevnik::insertLog($log);
		$proizvodi = $_SESSION['kosarica'];
		$vrijeme = $VirtualnoVrijeme->getTime();
		/* foreach ($proizvodi as $key => $value) {
			$ukupno += $value[''];
		} */
		$racun = array("korisnik_id" => $korisnik_id, "datum" => $vrijeme, "ukupno" => $ukupno);
		//$Racun->insert()
		/* foreach ($proizvodi as $key => $proizvod) {
			$StavkaRacun->insert($proizvod);
		} */
	}
	
	//uzeti podatke iz sessiona (artikle i količine) te i dodati u tpl
	$smarty->assign('artikli', $artikliKosarica);
	$smarty->display('Kosarica.tpl');
?>