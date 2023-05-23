fetch('data/writer.json')
.then((res)=> res.json())
.then((res)=> {
    let writer_first_floor = "";
    for(let i = 0; i < 5; i++){
        writer_first_floor += `
                        <div class="writer-img-box">
                        <div class="writer-img">

                        <img src="${res.writer[i].img}" alt="program1">
                        
                        <span>${res.writer[i].name}</span>
                        </div>
                        </div>
                `   ;
    }
    document.getElementById("writer-first-floor").innerHTML = writer_first_floor;
    
        let writer_second_floor = "";
    for(let i = 5; i < res.writer.length; i++){
        writer_second_floor += `
                        <div class="writer-img-box">
                        <div class="writer-img">

                        <img src="${res.writer[i].img}" alt="program1">
                        
                        <span>${res.writer[i].name}</span>
                        </div>
                        </div>
                `   ;
    }
    document.getElementById("writer-second-floor").innerHTML = writer_second_floor;
});

