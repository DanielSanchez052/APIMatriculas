<?php
header('Access-Control-Allow-Origin: *'); 
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: POST, DELETE, GET, PUT, OPTIONS'); 
header('Access-Control-Allow-Max-Age: 1000');
header('Access-Control-Allow-Headers: Origin, Content-Type ');
// Importar la conexion
$method = $_SERVER['REQUEST_METHOD'];

if($method == 'POST'){
    include 'modules/student/insertPerson.php';
}elseif($method == 'GET' && !isset($_GET["identification_number"])){
    include 'modules/student/listAllPersons.php';
}
elseif($method == 'GET' && isset($_GET["identification_number"])){
    include 'modules/student/listAllPersonById.php';
}elseif($method == 'PUT'){
    include 'modules/student/updatePerson.php';
}elseif($method == 'DELETE'){
    include 'modules/student/deletePerson.php';
}else{
    http_response_code(405);
    echo "Method $method Not Alowed";
}
    