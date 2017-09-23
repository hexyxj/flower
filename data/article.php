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
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>百花图谱 - 花卉网,您身边的花卉百科</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/header_and_footer.css">
    <link rel="stylesheet" href="css/article.css">
</head>

<body>
    <header class="header">
        <div class="top-d">
            花卉网,您身边的花卉百科全书!
        </div>
        <div class="header-main">
            <div class="top">
                <div class="logo">
                    <img src="images/header/logo.jpg" alt="">
                </div>
            </div>
            <div class="nav">
                <ul class="clear">
                    <li><a href="index.html">首页</a></li>
                    <li class="on"><a href="knowledge.html">养花知识</a></li>
                    <li><a href="moreflower.html">花卉大全</a></li>
                    <li><a href="succulent.html">多肉植物</a></li>
                    <li><a href="atlas.html">百花图谱</a></li>
                </ul>
            </div>
        </div>
    </header>
    <div class="main">
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
    </div>
    <div class="footer">
        <footer>
            <p>Copyright © 2017 xxxxxxx.com All right reserved. XXXX 版权所有</p>
        </footer>
    </div>
</body>

</html>

