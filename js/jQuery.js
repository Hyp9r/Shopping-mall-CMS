$(document).ready(function(){
    
    var fullURL = window.location.href;
    var page = fullURL.split("?page=")[1];
    var page = page.split("&")[0];

    switch(page){
        case 'registracija':
                //varijabla za testiranje validacije
                var counter = 0;
                $('#btnSendReg').prop("disabled", true);
                //Provjera zauzeća korisnickog imena preko AJAX-a
                $('#Korisnicko_ime').focusout(function (){
                    var uneseno = $(this).val();
                    $.ajax({
                        url: 'provjere/provjera_korisnickog_imena.php',
                        method: 'post',
                        data: {AJAXUnesenoKorime: uneseno},
                        dataType : 'text',
                        success: function(value){
                        var data = value.split(",");
                        $("#pogreska_output").html(data[0]);
                        if(data[1] == "false"){
                            $("#pogreska_output").css("border", "1px solid red");
                        }else{
                            $("#pogreska_output").css("border", "2px solid green");
                            counter++;
                            if(counter >=5){
                                $('#btnSendReg').prop("disabled", false);
                            }
                        }
                        }
                    });
                });

                //Provjera email-a
                $('#email').focusout(function(){
                    var email = $(this).val();
                    if(!isEmail(email)){
                        $("#pogreska_output").html('<p>Email nije važeći</p>');
                        $("#pogreska_output").css("border", "1px solid red");
                    }else{
                        //provjeriti da li je email vec u bazi
                        $.ajax({
                            url: 'provjere/provjera_korisnickog_imena.php',
                            method: 'post',
                            data: {AJAXEmail: email},
                            dataType : 'text',
                            success: function(value){
                            var data = value.split(",");
                            $("#pogreska_output").html(data[0]);
                            if(data[1] == "false"){
                                $("#pogreska_output").css("border", "1px solid red");
                            }else{
                                $("#pogreska_output").css("border", "2px solid green");
                                counter++;
                                if(counter >=5){
                                    $('#btnSendReg').prop("disabled", false);
                                }
                            }
                            }
                        });
                    }
                });

                //Provjera lozinke da li se podudara
                $('#lozinka2').focusout(function(){
                    var pass = $('#lozinka').val();
                    var pass2 = $('#lozinka2').val();
                    if(pass != pass2){
                        $("#pogreska_output").html('<p>Lozinke se ne podudaraju!</p>');
                        $("#pogreska_output").css("border", "1px solid red");
                    }else{
                        $("#pogreska_output").html('<p>Lozinke se podudaraju!</p>');
                        $("#pogreska_output").css("border", "2px solid green");
                        counter++;
                        if(counter >=5){
                            $('#btnSendReg').prop("disabled", false);
                        }
                    }
                });

                $('#ime').focusout(function(){
                    var ime = $(this).val();
                    if(isOnlyLetters(ime)){
                        $("#pogreska_output").html('<p>Ime važeće!</p>');
                        $("#pogreska_output").css("border", "2px solid green");
                        counter++;
                        if(counter >=5){
                            $('#btnSendReg').prop("disabled", false);
                        }
                    }else{
                        $("#pogreska_output").html('<p>Ime je ne važeće!</p>');
                        $("#pogreska_output").css("border", "1px solid red");
                    }
                });

                $('#prezime').focusout(function(){
                    var prezime = $(this).val();
                    if(isOnlyLetters(prezime)){
                        $("#pogreska_output").html('<p>Prezime važeće!</p>');
                        $("#pogreska_output").css("border", "2px solid green");
                        counter++;
                        if(counter >=5){
                            $('#btnSendReg').prop("disabled", false);
                        }
                    }else{
                        $("#pogreska_output").html('<p>Prezime je ne važeće!</p>');
                        $("#pogreska_output").css("border", "1px solid red");
                    }
                });
        //zatvori registraciju
        break;

        case 'dnevnik':
            $.ajax({
                url: 'provjere/uzmiBrojStranica.php',
                type: 'get',
                dataType : 'text',
                success: function(value){
                    createDataTable('#tablicaDnevnik', value);
                }
            });
            
        break;

        case 'upravljanje_korisnicima':
                $.ajax({
                    url: 'provjere/uzmiBrojStranica.php',
                 type: 'get',
                 dataType : 'text',
                 success: function(value){
                     createDataTable('#tablicaKorisnici', value);
                 }
             });
        break;

        case 'kosarica':
                $.ajax({
                    url: 'provjere/uzmiBrojStranica.php',
                 type: 'get',
                 dataType : 'text',
                 success: function(value){
                     console.log(value);
                     createDataTable('#tablicaKosarica', value);
                 }
             });
        break;

        case 'moderator':
                $.ajax({
                    url: 'provjere/uzmiBrojStranica.php',
                 type: 'get',
                 dataType : 'text',
                 success: function(value){
                     console.log(value);
                     createDataTable('#tablicaArtikli', value);
                 }
                });
        break;

        case 'zahtjevi':
                $.ajax({
                    url: 'provjere/uzmiBrojStranica.php',
                 type: 'get',
                 dataType : 'text',
                 success: function(value){
                     console.log(value);
                     createDataTable('#tablicaZahtjevi', value);
                 }
                });
        break;

        default:
        break;
    }

});


function createDataTable(id, value){
    $(id).dataTable({
        lengthChange: false,
        pageLength: parseInt(value, 10)
    });
}

function isEmail(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}

function isOnlyLetters(string) {
    return /^[a-zA-Z]+$/.test(string);
}