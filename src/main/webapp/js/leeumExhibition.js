//////////////////choi - exhibition///////////////////////
let slidelist = document.querySelector('.slide-list'),
    slide = document.querySelectorAll('.slide-list li'),
    currentIndex = 0,
    slideCount = slide.length,
    prevBtn =  document.querySelector('.prev'),
    slideWidth = 680,
    slideMargin = 40,
    nextBtn =  document.querySelector('.next');

    makeClone();

function makeClone(){
    for(let i = 0; i<slideCount; i++){
        //a.cloneNode() a 요소를 그대로 복사
        // a.cloneNode(true) a 요소 뿐만 아니라 자식 요소까지 그대로 복사
        let cloneSlide = slide[i].cloneNode(true);
        cloneSlide.classList.add('clone');
        //a.appendChild(b) a요소의 기준에 b를 추가함
        slidelist.appendChild(cloneSlide);
    }
    for(let i=slideCount-1; i>=0; i--){
        let cloneSlide = slide[i].cloneNode(true);
        cloneSlide.classList.add('clone');
        //a.prepend(b)
        slidelist.prepend(cloneSlide);
    }
    updateWidth();
    setInitialPos();
    setTimeout(function(){
        slidelist.classList.add('animated');
        
    },100)
}

function updateWidth(){
    let currentSlide = document.querySelectorAll('.slide-list li');
    let newSlideCount = currentSlide.length;

    let newWidth = (slideWidth+slideMargin) * newSlideCount - slideMargin + 'px';
    slidelist.style.width = newWidth;
}

function setInitialPos(){
    let initalTranslateValue = -(slideWidth+slideMargin) *slideCount;
   //slidelist {transform:translateX(-1000ox)}   
    slidelist.style.transform = 'translateX('+initalTranslateValue+'px)';
}

nextBtn.addEventListener('click', function(){
    moveSlide(currentIndex+1);
});
prevBtn.addEventListener('click', function(){
    moveSlide(currentIndex-1);
});

function moveSlide(num){
    slidelist.style.left = -num * (slideWidth+slideMargin) +'px';
    currentIndex = num;
    console.log(currentIndex, slideCount);

    if(currentIndex == slideCount || currentIndex == -slideCount){
        setTimeout(function(){
        slidelist.classList.remove('animated');
        slidelist.style.left = '0px';
        currentIndex = 0;
        }, 500);
        setTimeout(function(){
            slidelist.classList.add('animated');
        },600);
    }
}