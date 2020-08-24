<?php
class Conexion {
    public static function conectar()
    {
        $pdo = new PDO('mysql:host=localhost;dbname=db_udc_mahm', "root","");
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $pdo;
    }  

}
?>