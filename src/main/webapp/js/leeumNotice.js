function srchDataCheck() {
	if( document.getElementById("srch-no").value == "" ){
	  	alert("검색할 단어를 입력하세요");
		document.getElementById("srch-no").focus();
		return false;
	}
	document.form.submit();
	
}

$(function(){
    //페이지 박스
    $('.number span').click(function(){
        $('.number span').removeClass('active');
        $(this).addClass('active');
    });

    //searchbox 
    $('.srch_btn').click(function(e){
            $(this).val('');
    });

     //데이터 가져오기
    /*jQuery.ajax({
        type: "GET",
        url: "./data/data.json",
        dataType: "JSON",
        success: function(data){
            let list = '';
            for(let i = 0; i < data.qa_list.length; i++){
                list += '<li class="list">';
                list += '<div class="tbox"><h1>' + data.qa_list[i].num + '</h1>';
                list += '<p><a href="#">' + data.qa_list[i].title + '</a></p>';
                list += '</div><div class="pbox">';
                list += '<p>' + data.qa_list[i].writer + '</p><p>' + data.qa_list[i].comment + '</p></div></li>';
            }
            $('.lbox').html(list);
        },
        error:function(xhr, status, error){
            console.log(error);
        }
    })*/
})

