<?php
// header('Access-Control-Allow-Oroigin: *');
// header('Access-Control-Allow-Credentials: ture');
// header('Access-Control-Allow-Methods: POST, DELETE, GET, PUT'); 
// header('Access-Control-Allow-Max-Age: 1000');
// header('Access-Control-Allow-Headers: Origin, Content-Type');

$method = $_SERVER['REQUEST_METHOD'];

if($method == 'POST'){
    include 'modules/grades/insertGrade.php';
}elseif($method == 'GET' && file_get_contents('php://input') == null){
    include 'modules/grades/listAllGrades.php';
}
elseif($method == 'GET' && file_get_contents('php://input') != null){
    include 'modules/grades/listAllGradeById.php';
}elseif($method == 'PUT'){
    include 'modules/grades/updateGrade.php';
}elseif($method == 'DELETE'){
    include 'modules/grades/deleteGrade.php';
}else{
    http_response_code(405);
    echo "Method $method Not Alowed";
}
    