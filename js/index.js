(()=>{
    /* banner slider */
    var bannerImgs=document.querySelector("[data-load='bannerImgs']");
    var bannerInds=document.querySelector("[data-load='bannerInds']");
    var imgNum=bannerImgs.children.length;
    var TRANS=300;
    var imgLength=parseInt(window.getComputedStyle(bannerImgs.children[0],null).width);
    bannerImgs.style.width=imgNum*imgLength+"px";
    var n=0;
    function moveElement(){
        n++;
        var left=imgLength*n;
        bannerImgs.style.left=-left+"px";
        bannerInds.children[n-1].classList.remove("hover");
        if(n == imgNum-1){
            bannerInds.children[0].classList.add("hover");
            setTimeout(function() {
                bannerImgs.style.transition = "";
                bannerImgs.style.left = 0;
                n = 0;
                setTimeout(()=>{
                    bannerImgs.style.transition="all ." + TRANS / 100 + "s linear";
                },100);
            },TRANS);
        }else{
            bannerInds.children[n].classList.add("hover");
        }
    }
   var timer = setInterval(moveElement, 2000 + TRANS);
})();

