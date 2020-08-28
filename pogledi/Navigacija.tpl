<header>
    <nav>
        <ul id="nav-container">
            <li><a href="./index.php" rel="noopener noreferrer"><img src="./img/mall.png" alt="Shopping mall icon"></a></li>
            <li><a href="?page=trgovine">Trgovine</a></li>
            <li><a href="?page=kategorije">Kategorije</a></li>
            {if $tipKorisnika eq '0'}
            <li><a href="?page=login" rel="noopener noreferrer">Prijava</a></li>
            <li><a href="?page=registracija" rel="noopener noreferrer">Registracija</a></li>
            {elseif $tipKorisnika eq '1'}
            <li><a href="?page=racuni">Računi</a></li>
            <li><a href="?page=odjava"><button class="odjava">Odjava</button></a></li>
            <li><a href="?page=kosarica"><img src="./img/cart.png" alt="Shopping cart icon"></a></li>
            {elseif $tipKorisnika eq '2'}
            <li><a href="?page=moderator">Moderator</a></li>
            <li><a href="?page=odjava"><button class="odjava">Odjava</button></a></li>
            {elseif $tipKorisnika eq '3'}
            <li><a href="?page=zahtjevi">Zahtjevi</a></li>
            <li><a href="?page=konfiguracija">Konfiguracija</a></li>
            <li><a href="?page=dnevnik">Dnevnik</a></li>
            <li><a href="?page=upravljanje_korisnicima">Upravljanje korisnicima</a></li>
            <li><a href="?page=odjava"><button class="odjava">Odjava</button></a></li>
            {/if}
        </ul>
    </nav>
</header>