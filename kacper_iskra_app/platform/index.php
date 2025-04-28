<?php
    require_once("../conn.php")
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Platforms</title>
</head>
<body>
    <h1>Platforms:</h1>
    <ul>
        <?php
            $qry = $conn->query("SELECT id,name,version FROM platform");
            
            foreach($qry->fetchAll() as $row)
            {
                echo "<li><a href=\"show.php?id=$row[id]\">$row[name] $row[version]</a></li>";
            }
        ?>
    </ul>
</body>
</html>