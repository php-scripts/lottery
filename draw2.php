<meta charset="utf-8">
<?php
    $name=$_POST['name'];
    $number=rand(1,1000);
    $id_draw=rand(6,13);
    $conn=new mysqli('localhost', 'root', '', 'fant');
    if($name AND $number AND $id_draw){
        $result=$conn->query("INSERT INTO user values ('', '$name', '$number', '$id_draw');");
        if($result) echo 'Adding complete!'."</br>";
        else echo "Something went wrong"."</br>";
    }
    echo "</br>Hi $name, your number is $number. (Remember it!)</br>"
?>
<a href="pickAPrize.php">Pick a prize (click)</a>