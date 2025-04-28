<?php
    require_once("../conn.php");

    if(isset($_GET['id']) == false)
    {
        die("no id");
    }

    $dev_id = $_GET['id'];

    


    
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
        $qry = $conn->query("SELECT * FROM developers WHERE id=$dev_id");
        
        $data = $qry->fetchAll(PDO::FETCH_ASSOC)[0];

        foreach($data as $key => $val)
        {
            echo "<a>$key: $val</a><br>";
        }

        echo "<h1>Games: </h1>";

        $qry = $conn->query("select gra.title,developers.name FROM gra JOIN developers ON gra.developer_id=developers.id AND gra.developer_id=$dev_id");
        
        while($data = $qry->fetch())
        {
            echo "<a>$data[title]</a><br>";
        }

    ?>
</body>
</html>