<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: POST, DELETE, GET, PUT, OPTIONS'); 
header('Access-Control-Allow-Max-Age: 1000');
header('Access-Control-Allow-Headers: Origin, Content-Type ');

$method = $_SERVER['REQUEST_METHOD'];

if($method == 'POST'){
    include 'modules/department/insertDepartment.php';
}elseif($method == 'GET' && !isset($_GET["id_department"])){
    include 'modules/department/listAllDepartments.php';
}
elseif($method == 'GET' && isset($_GET["id_department"])){
    include 'modules/department/listAllDepartmentById.php';
}elseif($method == 'PUT'){
    include 'modules/department/updateDepartment.php';
}elseif($method == 'DELETE'){
    include 'modules/department/deleteDepartment.php';
}else{
    http_response_code(405);
    echo "Method $method Not Alowed";
}
    