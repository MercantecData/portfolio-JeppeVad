

<?php
if (isset($_POST['brugernavn'])) {  
    
    extract($_POST);  
    $servername = "localhost";  
    $username   = "root";  
    $password   = "";  
    $dbname     = "projekt";  
    // Create connection  
    $conn = new mysqli($servername, $username, $password, $dbname);  
    // Check connection  
    if ($conn->connect_error) {  
        die("Connection failed: " . $conn->connect_error);  
    }  
    $sql = "INSERT INTO `brugere` (Brugernavn, PSW) 
        VALUES ('$brugernavn','$kodeord')";
  
    if ($conn->query($sql) === TRUE) { 
        header('Location: index.html');  
    } else {  
        echo "Error: " . $sql . "<br>" . $conn->error;  
    }  
    $conn->close();  
}  
/*
---------------------------------------------------------------------------------
    $host = "localhost";
    $db_name = "projekt";
    $username = "root";
    $password = "";

    $conn = new mysqli($host, $username, $password, $db_name);

    if($conn->connect_error) {
        die("Connection to database failed: " .$conn->connect_error);
    }

    $sql = "INSTER INTO brugere (Brugernavn, PSW)
    VALUES(brugernavn, kodeord)";

    if ($conn->query($sql) == TRUE) {
        echo "Du blev registeret";
    }
    else {
        echo "Du blev ikke registeret!";
    }
    $conn->close();


     

if (isset($_POST['reg_user'])) {
    // receive all input values from the form
    $brugernavn = mysqli_real_escape_string($db, $_POST['brugernavn']);
    $kodeord = mysqli_real_escape_string($db, $_POST['kodeord']);
    $kodeord-gentag = mysqli_real_escape_string($db, $_POST['kodeord-gentag']);
}
  */  
?>

<html>  
    <div class="topnav"> <!--Navigation bar-->
        <a href="index.html">Start</a>
        <a class="active" href="#brugere">Brugere</a>
        <a href="login.html">Log-in</a>
        <a href="signUp.html">Sign up</a>
    </div>
</html>