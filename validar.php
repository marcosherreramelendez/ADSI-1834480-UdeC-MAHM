<?php
$type        = $_POST['type'];
$email       = $_POST['email'];
$password1   = $_POST['password'];

$servername  = "localhost";
$username    = "root";
$password    = "";
$dbname      = "db_udc_mahm";
    session_start();
    
        if (isset($_POST['email']) and $_POST['email'] != '' and $_POST['email'] != null and
            isset($_POST['password']) and $_POST['password'] != '' and $_POST['password'] != null) {
            
                try {
                    $conn = new PDO("mysql:host=$servername; dbname=$dbname", $username, $password);
                    // set the PDO error mode to exception
                    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                    if ($type == 1) {
                        $stmt = $conn->prepare("SELECT * FROM estudiantes WHERE email = ? AND password = ?");
                        $stmt->execute(array($email, $password1));
                       
                        
                    } else {
                        $stmt = $conn->prepare("SELECT * FROM administrador WHERE email = ? AND password = ?");
                        $stmt->execute(array($email, $password1));
                        
                    }
                    
                    
                    if ($stmt->rowCount() > 0) {
                        $row = $stmt->fetch(PDO::FETCH_OBJ);
                        $_SESSION['name'] = $row->name;
                        $_SESSION['id']   = $row->id;
                        $_SESSION['type'] = $type;
                        header('location: index.php');
                    } else {
                        header('location: login.php');
                    }
                } catch(PDOExection $e) {
                    echo $e->getMessage();
                }
            } else {
                /*** error datos ***/
                echo "error";
            }




?>