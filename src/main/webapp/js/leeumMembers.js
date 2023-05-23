function scroll_move(seq){
    var offset = $("#move" + seq).offset();
    $('html, body').animate({scrollTop : offset.top-200}, 0);
}

$('.membership-menu ul button').click(function(e){
    $('.membership-menu ul button').removeClass('active');
    $(this).toggleClass('active');
})



function navOn() {
    var nowTop = $(window).scrollTop();
    var move1_offset = $('#move1').offset().top;
    var move2_offset = $('#move2').offset().top-250;
    var move3_offset = $('#move3').offset().top-250;
    var move4_offset = $('#move4').offset().top-250;
    var move5_offset = $('#move5').offset().top-250;
    var move6_offset = $('#move6').offset().top-250;
    var move7_offset = $('#move7').offset().top-250;
    var move8_offset = $('#move8').offset().top-250;
    // 여기서 문제는 아래에서 다시 올라갈때는 위치가 맞지 않는 다는 것이다.

    $('.membership-menu ul button').removeClass('active');

    if ( nowTop >=  0 && nowTop < move2_offset) {
    $('.membership-menu ul button').eq(0).addClass('active');
    } else if( nowTop >=  move2_offset && nowTop < move3_offset) {
    $('.membership-menu ul button').eq(1).addClass('active');
    } else if( nowTop >=  move3_offset && nowTop < move4_offset) {
    $('.membership-menu ul button').eq(2).addClass('active');
    } else if( nowTop >=  move4_offset && nowTop < move5_offset) {
    $('.membership-menu ul button').eq(3).addClass('active');
    } else if( nowTop >=  move5_offset && nowTop < move6_offset) {
    $('.membership-menu ul button').eq(4).addClass('active');
    } else if( nowTop >=  move6_offset && nowTop < move7_offset) {
    $('.membership-menu ul button').eq(5).addClass('active');
    } else if( nowTop >=  move7_offset && nowTop < move8_offset) {
    $('.membership-menu ul button').eq(6).addClass('active');
    } else if( nowTop >=  move8_offset) {
    $('.membership-menu ul button').eq(7).addClass('active');
    } 
    
};
navOn();

$(window).scroll(function() {
    navOn();
});
