<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: POST, DELETE, GET, PUT, OPTIONS'); 
header('Access-Control-Allow-Max-Age: 1000');
header('Access-Control-Allow-Headers: Origin, Content-Type ');
// Importar la conexion
$method = $_SERVER['REQUEST_METHOD'];

if($method == 'POST'){
    include 'modules/teacher/insertTeacher.php';
}elseif($method == 'GET' && !isset($_GET["identification_number"])){
    include 'modules/teacher/listAllTeacher.php';
}
elseif($method == 'GET' && isset($_GET["identification_number"])){
    include 'modules/teacher/listAllTeacherById.php';
}elseif($method == 'PUT'){
    include 'modules/person/updatePerson.php';
}elseif($method == 'DELETE'){
    include 'modules/person/deletePerson.php';
}else{
    http_response_code(405);
    echo "Method $method Not Alowed";
}
    