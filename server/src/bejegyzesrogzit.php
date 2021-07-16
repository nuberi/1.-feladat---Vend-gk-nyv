<?php
require 'adatbazis.php';
    /* Bejegyzés rögzítése adatbázisba */
    $pdo=getConnection();
    echo '<pre>';
    var_dump($pdo);
    echo '</pre>';
    $stmt=$pdo->prepare("INSERT INTO bejegyzes(becenev,bejegyzes)VALUES(:becenev,:bejegyzes);");
    $stmt->execute([
        "becenev"=>$_POST['becenev'],
        "bejegyzes"=>$_POST['bejegyzes']
    ]);
   // header('Location: index.php');
?>