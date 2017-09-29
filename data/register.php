<?php
require_once("init.php");
$uname=$_REQUEST["uname"];
$upwd=$_REQUEST["upwd"];
$sql="INSERT INTO f_user VALUES(NULL,'$uname','$upwd')";
$res=mysqli_query($conn,$sql);
if($res){
    $sql="SELECT * FROM  f_user WHERE uname='$uname' AND upwd='$upwd'";
    $row= mysqli_fetch_assoc(mysqli_query($conn,$sql));
    echo '{"code":1,"msg":"注册成功","uname":"'.$row["uname"].'","uid":'.$row["uid"].'}';
}else{
    echo '{"code":-1,"msg":"注册失败"}';
}