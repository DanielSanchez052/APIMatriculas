<?php
// header('Access-Control-Allow-Oroigin: *');
// header('Access-Control-Allow-Credentials: ture');
// header('Access-Control-Allow-Methods: POST, DELETE, GET, PUT'); 
// header('Access-Control-Allow-Max-Age: 1000');
// header('Access-Control-Allow-Headers: Origin, Content-Type');

$method = $_SERVER['REQUEST_METHOD'];

if($method == 'POST'){
    include 'modules/department/insertDepartment.php';
}elseif($method == 'GET' && file_get_contents('php://input') == null){
    include 'modules/department/listAllDepartments.php';
}
elseif($method == 'GET' && file_get_contents('php://input') != null){
    include 'modules/department/listAllDepartmentById.php';
}elseif($method == 'PUT'){
    include 'modules/department/updateDepartment.php';
}elseif($method == 'DELETE'){
    include 'modules/department/deleteDepartment.php';
}else{
    http_response_code(405);
    echo "Method $method Not Alowed";
}
    