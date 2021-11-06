<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: POST, DELETE, GET, PUT, OPTIONS'); 
header('Access-Control-Allow-Max-Age: 1000');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token, Authorization ');

include 'connection/paramsDB.php';

$conn = mysqli_connect($hostName,$DBUser,$DBPass,$DBName);

if($conn->connect_error){
    die("La conexion a la BD Falló: ".$conn->connect_error);
}else{
    $json = file_get_contents('php://input');
    $obj = json_decode($json,JSON_UNESCAPED_UNICODE);
    
    $identification_number=$obj['identification_number'];
    $name=$obj['name'];
    $last_name=$obj['last_name'];
    $second_last_name=$obj['second_last_name'];
    $city=$obj['city'];
    $direction=$obj['direction'];
    $phone_number=$obj['phone_number'];
    $date_born=$obj['date_born'];
    $gender=$obj['gender'];
    $person_type=$obj['person_type'];
    $password=$obj['password'];

    $sql = "UPDATE person SET name='$name',last_name='$last_name',second_last_name='$second_last_name',city='$city',direction='$direction',phone_number='$phone_number',date_born='$date_born',gender='$gender',person_type='$person_type',password='$password' WHERE identification_number='$identification_number'";

    if(mysqli_query($conn,$sql)){
        $res['message']="Se ha actualizado la persona correctamente";
        http_response_code(201);
        echo json_encode($res,JSON_UNESCAPED_UNICODE);
        $conn->close();
    }else{
        $res['message']="Ha ocurrido un error";
        http_response_code(400);
        echo json_encode($res,JSON_UNESCAPED_UNICODE);
        $conn->close();
    }
}