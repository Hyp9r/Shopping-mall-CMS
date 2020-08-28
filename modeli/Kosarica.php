<?php

class Kosarica{


    function getItems(){
        return $_SESSION['kosarica'];
    }

    function remove($index){
        foreach($_SESSION['kosarica'] as $key => &$item){
            if($item['index'] == $index){
                unset($_SESSION['kosarica'][$key]);
            }
        }
    }

}

?>