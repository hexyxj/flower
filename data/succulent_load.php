<?php

require_once("init.php");

$data=[
    "crassulaceae"=>[],//景天科
    "cactaceae"=>[],//仙人掌科
    "aizoaceae"=>[]//番杏科
];
    
$sql="SELECT *  FROM f_succulent WHERE family='crassulaceae' ORDER BY update_time limit 0,10";
$result=mysqli_query($conn,$sql);
if($result){
    $data["crassulaceae"]=mysqli_fetch_all($result,MYSQLI_ASSOC);
}
$sql="SELECT *  FROM f_succulent WHERE family='crassulaceae' ORDER BY update_time limit 0,10";
$result=mysqli_query($conn,$sql);
if($result){
    $data["cactaceae"]=mysqli_fetch_all($result,MYSQLI_ASSOC);
}
$sql="SELECT *  FROM f_succulent WHERE family='crassulaceae' ORDER BY update_time limit 0,10";
$result=mysqli_query($conn,$sql);
if($result){
    $data["aizoaceae"]=mysqli_fetch_all($result,MYSQLI_ASSOC);
}

echo json_encode($data);
