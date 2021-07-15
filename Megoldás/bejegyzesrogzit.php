<?php

    if(isset($_POST['becenev']) && isset($_POST['bejegyzes'])) {
        $becenev = $_POST['becenev'];
        $bejegyzes = $_POST['bejegyzes'];
        if(strlen($becenev) >= 5 && strlen($becenev) <= 10 && strlen($bejegyzes) >= 10 && strlen($bejegyzes) <= 400) {
            require_once 'adatbazis.php';
            mysqli_query($adatbazis, "INSERT INTO bejegyzes(becenev, bejegyzes) VALUES ('$becenev', '$bejegyzes')");
        }
    }

    header('Location: index.php');

?>