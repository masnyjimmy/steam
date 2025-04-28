<?php
    require_once("../conn.php")
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Developers</title>
</head>
<body>
    <h1>Developers:</h1>
    <ul>
        <?php
            $qry = $conn->query("SELECT id,name FROM developers");

            while($row = $qry->fetch())
            {
                echo "<li><a href=\"show.php?id=$row[id]\">$row[name]</a></li>";
            }

        ?>
    </ul>
</body>
</html>