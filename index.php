<meta charset="utf-8">
<h3>Adding prizes to the lottery:</h3>
<form method="post">
    Enter name: <input type="text" name="name"></input></br>
    Enter price: <input type="text" name="price"></input></br>
    Enter description: <input type="text" name="description"></input></br>
    <input type="submit" name="submit" value="Add!">
</form>

<?php
    $conn=new mysqli('localhost', 'root', '', 'fant');
    if(!empty($_POST)){
        $name=$_POST['name'];
        $price=$_POST['price'];
        $description=$_POST['description'];
        $result=$conn->query("INSERT INTO fant values ('', '$name', '$price', '$description');");
        if($result) echo 'Adding complete!'."</br>";
        else echo "Something went wrong"."</br>";
    }
    $list=$conn->query("SELECT * FROM fant;");
    while(($record=$list->fetch_array()))
    {
        echo "<b>Prize number ".$record["id"]."</b></br>";
        echo "Name: ".$record["nazwa"]."</br>";
        echo "Price: ".$record["cena"]."</br>";
        echo "Description: ".$record["opis"]."</br>";
    }
?>
<a href="draw.php">Go to the draw screen</a>