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
    
    $id_course=$obj['id_course'];
    $name=$obj['name'];
    $credit=$obj['credit'];
    $type=$obj['type'];
    $course=$obj['course'];
    $semestre=$obj['semestre'];
    $id_teacher=$obj['id_teacher'];
    $id_grade=$obj['id_grade'];

    $sql = "INSERT INTO course(id_course, name, credit, type, course, semestre, id_teacher, id_grade) VALUES ('$id_course','$name','$credit','$type','$course','$semestre','$id_teacher','$id_grade')";

    if(mysqli_query($conn,$sql)){
        $res['message']="Se ha registrado al curso correctamente";
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