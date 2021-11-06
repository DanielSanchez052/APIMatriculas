<?php
// header('Access-Control-Allow-Oroigin: *');
// header('Access-Control-Allow-Credentials: ture');
// header('Access-Control-Allow-Methods: POST, DELETE, GET, PUT'); 
// header('Access-Control-Allow-Max-Age: 1000');
// header('Access-Control-Allow-Headers: Origin, Content-Type');
// Importar la conexion
$method = $_SERVER['REQUEST_METHOD'];

if($method == 'POST'){
    include 'modules/course/insertCourse.php';
}elseif($method == 'GET' && file_get_contents('php://input') == null){
    include 'modules/course/listAllCourses.php';
}
elseif($method == 'GET' && file_get_contents('php://input') != null){
    include 'modules/course/listAllCourseById.php';
}elseif($method == 'PUT'){
    include 'modules/course/updateCourse.php';
}elseif($method == 'DELETE'){
    include 'modules/course/deleteCourse.php';
}else{
    http_response_code(405);
    echo "Method $method Not Alowed";
}
    