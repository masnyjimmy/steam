<?php
    require_once("../conn.php");

    if(isset($_GET['id']) == false)
    {
        die("no id");
    }

    $game_id = $_GET['id'];



    
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
        $qry = $conn->query("SELECT * FROM gra WHERE id=$game_id");
            
        $data = $qry->fetchAll(PDO::FETCH_ASSOC)[0];

        foreach($data as $key => $val)
        {
            echo "<a>$key: $val</a><br>";
        }
    ?>

</body>
</html>