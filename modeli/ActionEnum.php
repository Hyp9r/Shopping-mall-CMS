<?php

class ActionEnum{
    public const LOGIN = 'Prijava u sustav';
    public const LOGOUT = 'Odjava iz sustava';
    public const REGISTER = 'Registracija';
    public const VIEW_CATEGORIES = 'Kategorije -> Sve kategorije';
    public const CREATE_CATEGORY = 'Kreiranje kategorije';
    public const CREATE_MODERATOR = 'Kreiranje moderatora';
    public const VIEW_SHOPS = 'Trgovine -> Sve trgovine';
    public const CREATE_SHOP = 'Kreiranje trgovine';
    public const BLOCK = 'Blokiranje korisnika';
    public const UNBLOCK = 'Odblokiranje korisnika';
    public const UPRAVLJANJE_KORISNICIMA = 'Upravljanje korisnicima';
    public const CHANGE_CONFIG = 'Promjena konfiguracije';
    public const CHANGE_PASSWORD = 'Promjena lozinke';
    public const PASSWORD_EMAIL = 'Poslan email za promjenu lozinke';
    public const REQUEST = 'Poslan zahtjev administratoru za narudžbom artikla';
    public const ACCEPT_REQUEST = 'Zahtjev prihvacen od strane admina';
    public const CREATE_ITEM = 'Kreiran artikl';
    public const CHECKOUT = 'Plaćanje košarice';
}

?>