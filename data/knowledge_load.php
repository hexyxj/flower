<?php

require_once("init.php");
$data=[
    "family"=>[],//家庭养花
    "acrobatics"=>[],//养花技巧
    "health"=>[],//花与健康
    "waterplanting"=>[],//水培花卉
    "bonsai"=>[],//盆景制作
    "balcony"=>[]//阳台种菜
];
$sql="SELECT * FROM `f_article` ORDER BY heat DESC LIMIT 0,20";
$res=mysqli_query($conn,$sql);
if($res){
    $rows=mysqli_fetch_all($res,MYSQLI_ASSOC);
    $data["family"]=$rows;
    $data["acrobatics"]=$rows;
    $data["health"]=$rows;
    $data["waterplanting"]=$rows;
    $data["bonsai"]=$rows;
    $data["balcony"]=$rows;
}

echo json_encode($data);