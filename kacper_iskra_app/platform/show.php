<?php
    require_once("../conn.php");

    if(isset($_GET['id']) == false)
    {
        die("no id");
    }

    $platform_id = $_GET['id'];

    $qry = $conn->query("SELECT * FROM platform WHERE platform.id=$platform_id");

    $platform_info = $qry->fetch();

    $qry = $conn->query("SELECT gra.title FROM gra LEFT JOIN platforms_games ON platforms_games.game_id=gra.id LEFT JOIN platform ON platforms_games.platform_id=platform.id WHERE platform.id=$platform_id");
    
    $games = $qry->fetchAll();    
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        echo "<p>";
        foreach($platform_info as $key => $val)
        {
            echo "$key: $val<br>";
        }
        echo "</p>";

        echo "<h1>Games:</h1>";
        echo "<ul>";
        foreach($games as $game)
        {
            echo "<li>$game[title]</li>";
        }
        echo "</ul>";
    ?>
</body>
</html>