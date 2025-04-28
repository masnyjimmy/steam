<?php
    require_once("../conn.php");

    if(isset($_GET['id']) == false)
    {
        die("no id");
    }

    $tag_id = $_GET['id'];

    $qry = $conn->query("SELECT * FROM tag WHERE tag.id=$tag_id");

    $tag_info = $qry->fetch();

    $qry = $conn->query("SELECT gra.title FROM tags_games LEFT JOIN gra ON tags_games.game_id=gra.id LEFT JOIN tag ON tags_games.tag_id=tag.id WHERE tags_games.tag_id=$tag_id;");
    
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
        foreach($tag_info as $key => $val)
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