<?php
// header('Access-Control-Allow-Oroigin: *');
// header('Access-Control-Allow-Credentials: ture');
// header('Access-Control-Allow-Methods: POST, DELETE, GET, PUT'); 
// header('Access-Control-Allow-Max-Age: 1000');
// header('Access-Control-Allow-Headers: Origin, Content-Type');
// Importar la conexion
$method = $_SERVER['REQUEST_METHOD'];

if($method == 'POST'){
    include 'modules/person/insertPerson.php';
}elseif($method == 'GET' && file_get_contents('php://input') == null){
    include 'modules/person/listAllPersons.php';
//}
// elseif($method == 'GET' && file_get_contents('php://input') != null){
//     include 'ShowStudentxId.php';
// }elseif($method == 'PUT'){
//     include 'UpdateStudentRecord.php';
// }elseif($method == 'DELETE'){
//     include 'DeleteStudentRecord.php';
}else{
    http_response_code(405);
    echo "Method $method Not Alowed";
}
    