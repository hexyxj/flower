<?php
@$aid=$_REQUEST["aid"];
if(!$aid){
    echo "aid:404";
    exit;
}
require_once("init.php");
$sql="SELECT * FROM f_article_details WHERE aid=$aid";
$res=mysqli_query($conn,$sql);
if(!$res){
    echo "res:404";
    exit;
}
$row=mysqli_fetch_assoc($res);
if(!$row){
    echo "row:404";
    exit;
}
// print_r($row);
?>
<div class="crumbs-nav">
    <a href="index.html">首页</a> / <a href="atlas.html">百花图谱</a> / <a href="article.html?aid=<?php echo $aid; ?>">世界花后-郁金香</a> 
</div>
<div class="content-title">
    <h1><?php echo $row["title"]; ?></h1>
</div>
<div class="content-intro">
    <?php echo $row["intro"] ?>
</div>
<div class="content-details">
    <?php echo $row["details"] ?>
</div>