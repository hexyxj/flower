<?php
require_once("init.php");
$uname=$_REQUEST["uname"];
$sql="SELECT * FROM f_user WHERE uname='$uname'";
// echo $sql;
$res=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($res);
if($row){
    echo '{"code":-1,"msg":"用户已存在"}';
}else{
    echo '{"code":1,"msg":"通过"}';
}