<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: POST, DELETE, GET, PUT, OPTIONS'); 
header('Access-Control-Allow-Max-Age: 1000');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token, Authorization ');

include './connection/paramsDB.php';

$conn = mysqli_connect($hostName,$DBUser,$DBPass,$DBName);

if($conn->connect_error){
    die("La conexion a la BD Falló: ".$conn->connect_error);
}else{
    $json =  file_get_contents('php://input');
    $obj = json_decode($json,JSON_UNESCAPED_UNICODE);
    
    $id_course= isset($obj['id_course']) ? $obj['id_course'] : null;
    $sql = "SELECT*FROM course where id_course = '$id_course'";

    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while($row[] = $result->fetch_assoc()) {
            $item = $row;
            $json = json_encode($item,JSON_UNESCAPED_UNICODE);
            echo ($json);
        }
    }
    else
    {
    echo "No hay cursos para mostrar";
    }
}