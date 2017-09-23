<?php 
require_once("init.php");
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];

$sql="SELECT * FROM f_user WHERE uname='$uname' AND upwd=$upwd";
$res=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($res);
if($row){
  echo '{"code":1,"msg":"登录成功","uname":"'.$uname.'","uid":'.$row["uid"].'}';
}else{
  echo '{"code":-1,"msg":"登录失败"}'; 
}