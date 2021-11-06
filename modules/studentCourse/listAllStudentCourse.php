<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: POST, DELETE, GET, PUT, OPTIONS'); 
header('Access-Control-Allow-Max-Age: 1000');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token, Authorization ');

include './connection/paramsDB.php';

$conn = mysqli_connect($hostName,$DBUser,$DBPass,$DBName);
$conn->query("SET NAMES 'utf8'");

if($conn->connect_error){
    die("La conexion a la BD Falló: ".$conn->connect_error);
}else{
    $sql = "SELECT*FROM student_course";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while($row[] = $result->fetch_assoc()) {
            $item = $row;
        }
        http_response_code(200);
        $json = json_encode($item,JSON_UNESCAPED_UNICODE);
        echo ($json);
        $conn->close();

    }
    else
    {
    echo "No hay Nada para mostrar";
    }
}