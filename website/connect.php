<?php
    $server = "localhost";
    $user = "root";
    $password = "";
    $dbname = "ofertas";

    $conection = mysqli_connect($server, $user, $password, $dbname);
    if(!$conection){
        die("Houve um erro. " .mysqli_connect_error());
    }
?>