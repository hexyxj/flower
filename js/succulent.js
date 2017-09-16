;(() => {
    myAjax("GET", "data/succulent_load.php")
    .then(msg => {
        var msg=JSON.parse(msg);
        loadData(document.querySelector(".crassulaceae .f-content"),msg.crassulaceae);
        loadData(document.querySelector(".cactaceae .f-content"),msg.cactaceae);
        loadData(document.querySelector(".aizoaceae .f-content"),msg.aizoaceae);
    });

    function loadData(elem,data){
        var html="";
        for(var obj of data){
            html += `<a class="img" href="${obj.href}">
            <img src="${obj.pic}" alt="">
            <div class="desc">
                <div>
                    <h4 class="title">${obj.name}</h4>
                    <p class="desc-content">${obj.descr}</p>
                </div>
            </div>
        </a>`
        }
        elem.innerHTML=html;
    }
})();

/*
create table f_succulent(
    sid int primary key auto_increment,
    name varchar(20) not null default "",
    family varchar(16) not null default "",
    pic varchar(128) not null default "images/moreflower/default.jpg",
    descr varchar(128) not null default "",
    update_time int not null default 0
);
*/