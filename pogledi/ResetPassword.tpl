<section id="landing">
    <section class="registracija--container">
        <div class="login--main">
            <form action="" method="post" id="zaboravljenaForma" name="zaboravljenaForma">
                <div class="login--item">
                    <label for="lozinka1">Lozinka</label>
                </div>
                <div class="login--item">
                    <input type="password" id="lozinka1" name="lozinka1">
                </div>


                <div class="login--item">
                    <label for="lozinka2">Potvrdi lozinku</label>
                </div>
                <div class="login--item">
                    <input type="password" id="lozinka2" name="lozinka2">
                </div>
                    
                <div class="login--item">
                    <label id="email">{$email}</label>
                </div>


                <div class="login--item">
                    <a href='' onclick="this.href='?page=password_recover&email=' + document.getElementById('email').textContent + '&pw=' + document.getElementById('lozinka1').value" class="button--block button--odblokiraj">Pošalji</a>
                </div>

            </form>
        </div>
    </section>
</section>