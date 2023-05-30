<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leeum</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/leeumMain.css">
</head>
<body>
<jsp:include page="/include/leeumHeader.jsp"></jsp:include>

     <!-- Do hero -->
	<div class="container">
        <div class="do-explain">
            <p>미술관 내 관람객 안전을 위하여 100% 사전 예약제로 운영중이며, 
                예약자 본인이 아닌 경우 입장이 제한될 수 있습니다.
            <br>
                또한 주차장이 협소한 관계로 만차 시 주차가 불가하오니, 가급적 대중교통을 이용해 주시기 바랍니다.
            </p>
            <div class="do-ex-main">
                <img src="images/main.PNG" alt="">
            </div>
        </div>
    </div>
    
    
    <!-- Choi exhibition -->
    <div class="container">
        <div class="main-nav">
            <ul class="main-nav-title">
                <li>전시</li>
                <li>현재 전시</li>
            </ul>
        </div>
        <div class="slide">
            <ul class="slide-list">
                <li><img src="images/전시4.jpg" alt="">
                <div class="slide-list-text">
                    <p>마우리치오 카텔란</p>
                    <p>2023.01.31~2023.07.16</p>
                </div>    
                </li>
                <li><img src="images/전시1.jpg" alt=""></li>
                <li><img src="images/전시2.jpg" alt=""></li>
                <li><img src="images/전시3.jpg" alt=""></li>
            </ul>
        </div>
        <p class="controls">
           <span class="prev"><i class="fa-solid fa-angles-left"></i></span>
           <span class="next"><i class="fa-solid fa-angles-right"></i></span>
        </p>
    </div>
    
    
    <!-- kang collection -->
    <div class="container">
        <div>
            <h1 class="kang-so">소장품</h1>
        </div>
        <div class="row">
            <div class="left-kang">
                <p>고미술 소장품</p>
            </div>
            <div class="right-kang">
                <img src="images/소장품1.jpg" alt="001">
            </div>
        </div>
        <div class="row">
            <div class="left-kang">
                <p>현대미술 소장품</p>
            </div>
            <div class="right-kang">
                <img src="images/소장품2.jpg" alt="002">
            </div>
        </div>
    </div>


    <!-- Choi program -->
    <div class="container">
        <div class="main-nav">
            <ul class="main-nav-title">
                <li>프로그램</li>
            </ul>
        </div>
        <div class="slide">
            <ul class="slide-list">
                <li><img src="images/bottom-slide-1.jpg" alt="">
                <div class="slide-list-text">
                    <p>마우리치오 카텔란</p>
                    <p>2023.01.31~2023.07.16</p>
                </div>    
                </li>
                <li><img src="images/bottom-slide-2.jpg" alt=""></li>
                <li><img src="images/bottom-slide-3.jpg" alt=""></li>
                <li><img src="images/bottom-slide-4.jpg" alt=""></li>
            </ul>
        </div>
        <p class="controls">
        	<span class="prev"><i class="fa-solid fa-angles-left"></i></span>
            <span class="next"><i class="fa-solid fa-angles-right"></i></span>
        </p>
    </div>
    
    
    <!-- Jeon notice -->
    <div class="notice-main">
        <div class="notice-left">
            <div class="notice-left-top">
                <span>공간</span>
                <span>관람객과 예술 작품이 교감하는 <br> 리움미술관의 건축과 공간을 <br> 소개합니다.</span>
            </div>
            <p>리움 미술관은 한국 고유의 미를 담고있는 전통미술과 생동하는 현대미술, <br>
                시대적 가치를 반영한 국제미술이 함께 공존하는 세계를 향한 열린 미술관입니다.</p>
            <a href="leeumPlace.jsp">더보기<i class="fa-sharp fa-solid fa-arrow-right"></i></a>
        </div>
        <div class="notice-right">
            <p>공지사항</p>
            <div>
                <span>1</span>
                <span>고미술 상설전 2층 [감상과 취향] 관람 제한 안내 드립니다. 세부사항은 게시판에서 확인 바랍니다.</span>
                <span>2023.04.26</span>
            </div>
            <div>
                <span>2</span>
                <span>시스템 점검에 따른 홈페이지 서비스 일시 중단 안내. 세부사항은 게시판에서 확인 바랍니다.</span>
                <span>2023.04.06</span>
            </div>
            <div>
                <span>3</span>
                <span>강당라운지 [장영규 : 추종자] 관람 제한 안내. 세부사항은 게시판에서 확인 바랍니다.</span>
                <span>2023.03.30</span>
            </div>
            <a href="leeumNotice.jsp">더보기<i class="fa-sharp fa-solid fa-arrow-right"></i></a>
        </div>
    </div>
    
    
    <!-- Cha writer -->
	<div class="container wt">
    	<ul class="writer">
        	<li class="writer-left">
            	<p>작가</p>
        	</li>
        	<li class="writer-right">
            	<p>리움 미술관의 소장 작가와 전시 참여 작가를 소개합니다.</p>
            	<span><a href="leeumArtist.jsp">더보기<i class="fa-sharp fa-solid fa-arrow-right"></i></a></span>
        	</li>
    	</ul>

	    <!--loop-->
	    <div id="writer-first-floor">
		    <div class="writer-img-box">
		        <div class="writer-img">
		            <img src="images/writer1.jpeg" alt="writer">
		            <span>작가이름</span>
		        </div>
		    </div>
	    </div>
	    
	    <div id="writer-second-floor">
		    <div class="writer-img-box">
		        <div class="writer-img">
		            <img src="images/writer1.jpeg" alt="writer">
		            <span>작가이름</span>
		        </div>
		    </div>
	    </div>
	    <!--/loop-->
	</div>


<jsp:include page="/include/leeumFooter.jsp"></jsp:include>

<script src="js/jquery-1.12.4.min.js"></script>
<script src="js/leeumExhibition.js"></script>
<script src="js/writer.js"></script>
</body>
</html>