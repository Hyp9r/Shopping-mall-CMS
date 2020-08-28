<?php
/* Smarty version 3.1.34-dev-7, created on 2020-06-19 15:57:44
  from 'C:\xampp\htdocs\WebDip_Projekt\pogledi\Navigacija.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5eecc4586b3e97_61545494',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '45727bdd2e7d3d54d23b19168ea93a1d3fe5a74a' => 
    array (
      0 => 'C:\\xampp\\htdocs\\WebDip_Projekt\\pogledi\\Navigacija.tpl',
      1 => 1592575034,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5eecc4586b3e97_61545494 (Smarty_Internal_Template $_smarty_tpl) {
?><header>
    <nav>
        <ul id="nav-container">
            <li><a href="./index.php" rel="noopener noreferrer"><img src="./img/mall.png" alt="Shopping mall icon"></a></li>
            <li><a href="./trgovine/trgovine.php">Trgovine</a></li>
            <li><a href="./moderator/kategorije.php">Kategorije</a></li>
            <?php if ($_smarty_tpl->tpl_vars['tipKorisnika']->value == '0') {?>
            <li><a href="./forms/login.php" rel="noopener noreferrer">Prijava</a></li>
            <li><a href="./forms/registration.php" rel="noopener noreferrer">Registracija</a></li>
            <?php } elseif ($_smarty_tpl->tpl_vars['tipKorisnika']->value == '1') {?>
            <li><a href="./registrirani/kosarica.php">Košarica</a></li>
            <li><a href="./registrirani/racuni.php">Računi</a></li>
            <li><a href="./php/odjava.php"><button class="odjava">Odjava</button></a></li>
            <?php } elseif ($_smarty_tpl->tpl_vars['tipKorisnika']->value == '2') {?>
            <li><a href="./registrirani/kosarica.php">Moderator</a></li>
            <li><a href="./php/odjava.php"><button class="odjava">Odjava</button></a></li>
            <?php } elseif ($_smarty_tpl->tpl_vars['tipKorisnika']->value == '3') {?>
            <li><a href="./administrator/dnevnik.php">Dnevnik</a></li>
            <li><a href="./administrator/upravljanje_korisnicima.php">Upravljanje korisnicima</a></li>
            <li><a href="./php/odjava.php"><button class="odjava">Odjava</button></a></li>
            <?php }?>
        </ul>
    </nav>
</header><?php }
}
