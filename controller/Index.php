<?php
    include "./modeli/Kategorija.php";
    $Kategorija = new Kategorija();
    $colors = array("#ffeaa7","#fab1a0","#ff7675", "#fd79a8", "#636e72");
    $kategorije = $Kategorija->getFiveCategories();
    $smarty->assign('kategorije', $kategorije);
    $smarty->assign('color', $colors);
    $smarty->assign('counter', 0);
    $smarty->display('index.tpl');
?>