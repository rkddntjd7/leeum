$(function() {
    $(".pagenum-col a").click(function() {
        $(".pagenum-col a").removeClass("pagenum-line-col");
        $(this).addClass("pagenum-line-col");
    })


    jQuery.ajax({
        type: "GET",
        url: "./data/collect.json",
        dataType: "JSON",
        success: function(data){
            let list = '';
            for(let i = 0; i < data.col_list.length; i++){
                list += 
                `<li>
                    <span class="col-img">
                        <img src="images/${data.col_list[i].img}" alt="col-img">
                    </span>
                    <div class="col-title">
                        <p class="list-title-col">${data.col_list[i].title}</p>
                        <p class="detail-col">${data.col_list[i].detail}</p>
                        <span>${data.col_list[i].display}</span>
                    </div>
                </li>`;
            }
            $('.col-list').html(list);
        },
        error:function(error){
            console.log(error);
        }
    })
})