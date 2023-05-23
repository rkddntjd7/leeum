$(function(){
    $(".do-one-list li span").click(function(){
        $(".do-one-list li span").removeClass("do-line");
        $(this).addClass("do-line");
    })
});


function move(name) {
    var location = document.querySelector("#" + name).offsetTop;
    window.scrollTo({top: location, behavior: 'smooth'});
}
