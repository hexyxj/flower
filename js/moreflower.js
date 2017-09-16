;(() => {
    myAjax( "get","data/moreflower_load.php").then((data) => {
        var dataObj=JSON.parse(data);
        /* 草本植物 */
        loadData(document.querySelector(".herbage"),dataObj.herbage);
        
        /* 木本植物 xylophyta */
        loadData(document.querySelector(".xylophyta"),dataObj.xylophyta);
        
        /* 藤本植物 liana */
        loadData(document.querySelector(".liana"),dataObj.liana);
        
        /* 兰科植物 arethusa */
        loadData(document.querySelector(".arethusa"),dataObj.arethusa);

        /* 水生植物 hydrophyte */
        loadData(document.querySelector(".hydrophyte"),dataObj.hydrophyte);
       
    }).catch(data => {
        console.log(data);
    })
    function loadData(elem,data){
        var left="";    
        var right="";
        for(var obj of data){
            left += `<li><a href="${obj.href}">${obj.name}</a></li>`;
            right += `<li><a href="${obj.href}"><img src="${obj.pic}"></a></li>`;
        }
        elem.querySelector(".f-name-list").innerHTML=left;
        elem.querySelector(".f-img-list").innerHTML=right;
    }
})();