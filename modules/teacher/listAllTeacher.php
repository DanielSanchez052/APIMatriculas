<?php
// header('Access-Control-Allow-Origin: *');
// header('Access-Control-Allow-Credentials: true');
// header('Access-Control-Allow-Methods: POST, DELETE, GET, PUT, OPTIONS'); 
// header('Access-Control-Allow-Max-Age: 1000');
// header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token, Authorization ');

include './connection/paramsDB.php';

$conn = mysqli_connect($hostName,$DBUser,$DBPass,$DBName);

if($conn->connect_error){
    die("La conexion a la BD Falló: ".$conn->connect_error);
}else{
    $sql = "select p.id_person, p.identification_number, p.name, p.last_name, p.second_last_name, p.city, p.direction, p.phone_number, p.date_born, p.gender, p.person_type, d.id_department department from person p
    inner join teacher t on t.id_teacher=p.id_person
    inner join department d on d.id_department=t.id_department
    where p.person_type='teacher'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while($row[] = $result->fetch_assoc()) {
            $item = $row;
        }
        $json = json_encode($item,JSON_UNESCAPED_UNICODE);
        echo ($json);
        $conn->close();
    }
    else
    {
    echo "No hay Nada para mostrar";
    }
}