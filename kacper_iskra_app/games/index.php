<?php
    require_once("../conn.php")
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Games</title>
</head>
<body>
    <h1>Lista gier:</h1>
    <ul>
        <?php
            $qry = $conn->query("SELECT title,id FROM gra");

            while($row = $qry->fetch())
            {
                echo "<li><a href=\"show.php?id=$row[id]\">$row[title]</a></li>";
            }

        ?>
    </ul>
</body>
</html>