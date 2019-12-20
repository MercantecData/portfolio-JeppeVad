<?php
include('loginform.php'); 
//Jeg kunne ikkke få login siden til at virke
?>
<!DOCTYPE html>
<html>
    <header>
        <title>Projekt opgave</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </header>

    <body>
        <div>    
            <div class="header"> <!--Header-->
                <h1>Projekt opgave</h1>
                <p>Lavet af Jeppe Vad</p>
            </div>
            <div class="topnav"> <!--Navigation bar-->
                <a href="index.html">Start</a>
                <a href="displayData.php">Brugere</a>
                <a class="active" href="#login">Log-in</a>
                <a href="signUp.html">Sign up</a>
            </div>
            <div id="login">
                <h2>Login Form</h2>
                <form action="" method="post">
                    <label>Brugernavn :</label>
                    <input id="name" name="username" placeholder="brugernavn" type="text">
                    <label>Kodeord :</label>
                    <input id="password" name="password" placeholder="kodeord" type="password"><br><br>
                    <input name="submit" type="submit" value=" Login ">
                    <span><?php echo $error; ?></span>
                </form>
            </div>

        </div>    
    </body>
</html>
