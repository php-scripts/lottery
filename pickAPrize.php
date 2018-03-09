<meta charset="utf-8">
<form method="post">
Enter prize number: <input type="text" name="nr"></input>
<input type="submit" value="Pick!"></input>
</form>
<?php
    if(!empty($_POST)){
        $nr=$_POST['nr'];
        $conn=new mysqli('localhost', 'root', '', 'fant');
        $list=$conn->query("SELECT * FROM fant JOIN user ON fant.id=user.losowany_fant where wylosowany_nr=$nr;");
        while(($record=$list->fetch_array()))
        {
            echo "Congratulations ".$record["imie"].",</br>";
            echo " you can pick ".$record["nazwa"];
            echo " for ".$record["cena"]."$.</br>";
        }
    }
?>
<a href="index.php">Start</a>