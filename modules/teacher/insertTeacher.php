<?php
// header('Access-Control-Allow-Origin: *');
// header('Access-Control-Allow-Credentials: true');
// header('Access-Control-Allow-Methods: POST, DELETE, GET, PUT, OPTIONS'); 
// header('Access-Control-Allow-Max-Age: 1000');
// header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token, Authorization ');

include 'connection/paramsDB.php';

$conn = mysqli_connect($hostName,$DBUser,$DBPass,$DBName);

function get_last_id($conn){
    
    $rs = mysqli_query($conn,"SELECT @@identity AS id"); 
    if ($rs->num_rows > 0) {
        $row[] = $rs->fetch_assoc();
        $id = $row[0]['id'];
        return $id;
    }else{
        return "Ha ocurrido un error";
    }
    $conn->close();
}

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
    $password=$obj['password'];
    $id_department = $obj['id_department'];

    $sqlPerson = "INSERT INTO person(identification_number, name, last_name, second_last_name, city, direction, phone_number, date_born, gender, person_type, password) VALUES ('$identification_number','$name','$last_name','$second_last_name','$city','$direction','$phone_number','$date_born','$gender','teacher','$password')";

    if(mysqli_query($conn,$sqlPerson)){
        $last_id = get_last_id($conn);
        $sqlTeacher = "INSERT INTO `teacher`(`id_teacher`, `id_department`) VALUES ('$last_id','$id_department')";

        if(mysqli_query($conn,$sqlTeacher)){

            $res['message']="Se ha registrado el profesor correctamente";
            http_response_code(201);
            echo json_encode($res,JSON_UNESCAPED_UNICODE);
            $conn->close();

        }else{
        $res['message']="Ha ocurrido un error";
        http_response_code(400);
        echo json_encode($res,JSON_UNESCAPED_UNICODE);
        $conn->close();
    }

    }else{
        $res['message']="Ha ocurrido un error";
        http_response_code(400);
        echo json_encode($res,JSON_UNESCAPED_UNICODE);
        $conn->close();
    }
}