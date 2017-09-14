<?php
require_once("init.php");
$data=[
    "herbage"=>[],//草本植物
    "xylophyta" =>[],//木本植物
    "liana"=>[],//藤本植物
    "arethusa"=>[],//兰科植物
    "hydrophyte"=>[],//水生植物
];
//草本植物
$sql="SELECT * FROM `f_flower` WHERE family='草本植物'";
$res=mysqli_query($conn,$sql);
if($res){
    $data["herbage"]=mysqli_fetch_all($res,MYSQLI_ASSOC);
}
//木本植物
$sql="SELECT * FROM `f_flower` WHERE family='草本植物'";
$res=mysqli_query($conn,$sql);
if($res){
    $data["xylophyta"]=mysqli_fetch_all($res,MYSQLI_ASSOC);
}
//藤本植物
$sql="SELECT * FROM `f_flower` WHERE family='草本植物'";
$res=mysqli_query($conn,$sql);
if($res){
    $data["liana"]=mysqli_fetch_all($res,MYSQLI_ASSOC);
}
//兰科植物
$sql="SELECT * FROM `f_flower` WHERE family='草本植物'";
$res=mysqli_query($conn,$sql);
if($res){
    $data["arethusa"]=mysqli_fetch_all($res,MYSQLI_ASSOC);
}
//水生植物
$sql="SELECT * FROM `f_flower` WHERE family='草本植物'";
$res=mysqli_query($conn,$sql);
if($res){
    $data["hydrophyte"]=mysqli_fetch_all($res,MYSQLI_ASSOC);
}
echo json_encode($data);