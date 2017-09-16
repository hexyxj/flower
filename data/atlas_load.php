<?php

require_once("init.php");

$currentPage=$_REQUEST["currentPage"];
$start=($currentPage-1)*8;
// $start=0;
$sql="SELECT * FROM f_atlas ORDER BY heat DESC LIMIT $start,8";
$res=mysqli_query($conn,$sql);
if($res){
    echo json_encode(mysqli_fetch_all($res,MYSQLI_ASSOC));
}