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
                <a class="active" href="#brugere">Brugere</a>
                <a href="login.php">Log-in</a>
                <a href="signUp.html">Sign up</a>
            </div>
            <div>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Brugernavn</th>
                    </tr>
                    <?php
                        $conn = mysqli_connect("localhost", "root", "", "projekt");
                        if($conn->connect_error) {
                            die("Connection failed:". $conn-> connect_error);
                        }

                        $sql = "SELECT ID, Brugernavn FROM brugere";
                        $result = $conn-> query($sql);

                        if($result-> num_rows > 0) {
                            while ($row = $result-> fetch_assoc()) {
                                echo "<tr><td>".$row["ID"]."</td><td>" .$row["Brugernavn"]. "</td></tr>";
                            }
                            echo "</table>";
                        }
                        else {
                            echo "Ingen brugere registeret";
                        }
                        $conn-> close();
                    ?>
                </table>
            </div>
        </div>
    </body>
</html>