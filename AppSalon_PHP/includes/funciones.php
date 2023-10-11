<?php

function obtenerServicios(){
    try {
        //importar las credenciales
        require 'database.php';

        //consulta SQL
        $sql = "select * from servicios;";

        //realizar la consulta
        $consulta = mysqli_query($db, $sql);

        return $consulta;
        
    } catch(\Throwable $th){
        var_dump($th);
    }
}

obtenerServicios();