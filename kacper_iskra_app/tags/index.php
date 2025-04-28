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
    <h1>Tags:</h1>
    <ul>
        <?php
            $qry = $conn->query("SELECT tag_name,id FROM tag");
            
            foreach($qry->fetchAll() as $row)
            {
                echo "<li><a href=\"show.php?id=$row[id]\">$row[tag_name]</a></li>";
            }
        ?>
    </ul>
</body>
</html>