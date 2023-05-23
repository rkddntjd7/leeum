fetch('./data/program.json')
.then((res)=> res.json())
.then((res)=> {
    let div = "";
    for(let i = 0; i<res.program.length; i++){
        div += `
                    <div class="program-inner">
                        <img src="${res.program[i].img}" alt="program1">
                        <p id="textbold">${res.program[i].title}</p>
                        <p>${res.program[i].location}</p>
                        <p>${res.program[i].date}</p>
                    </div>
                `   ;
    }
    document.getElementById("row").innerHTML=div;
});


// function next(){
//     $('.program-inner').animate({
//         width: '+=900px'
//     },1000)
// }

