<?php
require_once("init.php");
$data = [];
/* 精彩推荐 */
$sql = "SELECT * FROM f_article ORDER BY heat DESC limit 0,7";
$res = mysqli_query($conn,$sql);
$data["recommend"] = mysqli_fetch_all($res,MYSQLI_ASSOC);

/* 轮播图 */
$sql="SELECT * FROM f_index_slider ORDER BY update_time DESC LIMIT 0,4";
$res = mysqli_query($conn,$sql);
$data["sliderImg"] = mysqli_fetch_all($res,MYSQLI_ASSOC);

/* 热门花卉 */
$sql="SELECT * FROM f_article ORDER BY heat DESC LIMIT 0,5";
$res = mysqli_query($conn,$sql);
$data["hotFlowers"] = mysqli_fetch_all($res,MYSQLI_ASSOC);


/* 花卉大全,左边文字 */
//$sql = "SELECT * FROM f_article WHERE  type='h' ORDER BY update_time DESC limit 0,16";
$sql = "SELECT * FROM f_article  ORDER BY update_time DESC limit 0,16";
$res = mysqli_query($conn,$sql);
$data["moreflowerArc"] = mysqli_fetch_all($res,MYSQLI_ASSOC);
/* 花卉大全,右边图片 */
$sql="SELECT * FROM f_flower ORDER BY update_time DESC LIMIT 0,8";
$res = mysqli_query($conn,$sql);
$data["moreflowerImgs"] = mysqli_fetch_all($res,MYSQLI_ASSOC);

/* 百花图谱 */
$sql="SELECT * FROM f_index_atlas ORDER BY heat DESC LIMIT 0,8";
$res = mysqli_query($conn,$sql);
$data["indexAtlas"] = mysqli_fetch_all($res,MYSQLI_ASSOC);

/* 多肉植物,左边图片 */
$sql="SELECT * FROM f_succulent ORDER BY update_time DESC LIMIT 0,8";
$res = mysqli_query($conn,$sql);
$data["succulentImgs"] = mysqli_fetch_all($res,MYSQLI_ASSOC);

/* 多肉植物,右边文字 */
//$sql = "SELECT * FROM f_article WHERE  type='d' ORDER BY update_time DESC limit 0,16";
$sql = "SELECT * FROM f_article  ORDER BY update_time DESC limit 0,16";
$res = mysqli_query($conn,$sql);
$data["succulentArc"] = mysqli_fetch_all($res,MYSQLI_ASSOC);

/* 每日精选 */
$sql="SELECT * FROM f_article ORDER BY update_time DESC LIMIT 0,5";
$res = mysqli_query($conn,$sql);
$data["dailyChoice"] = mysqli_fetch_all($res,MYSQLI_ASSOC);
echo json_encode($data);