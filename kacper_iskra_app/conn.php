<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "ki4t1";

    try
    {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname",$username,$password);
        $conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_ASSOC);
    }
    catch(PDOException $e)
    {
        $msg = $e->getMessage();
        die("Nie da sie polaczyc :O ($msg)");
    }

?>
