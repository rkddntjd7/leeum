<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leeum</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/leeumExhibition.css">
</head>
<body>

<jsp:include page="/include/leeumHeader.jsp"></jsp:include>

	<div class="container">
        <div class="main-nav">
            <ul class="main-nav-title">
                <li>전시</li>
                <li>현재 전시</li>
            </ul>
        </div>
        <div class="slide">
            <ul class="slide-list">
                <li><img src="images/전시1.jpg" alt="">
                <div class="slide-list-text">
                    <p>마우리치오 카텔란</p>
                    <p>2023.01.31~2023.07.16</p>
                </div>    
                </li>
                <li><img src="images/전시2.jpg" alt=""></li>
                <li><img src="images/전시3.jpg" alt=""></li>
                <li><img src="images/전시4.jpg" alt=""></li>
            </ul>
        </div>
        <p class="controls">
           <span class="prev"><i class="fa-solid fa-angles-left"></i></span>
           <span class="next"><i class="fa-solid fa-angles-right"></i></span>
        </p>
    </div>
<jsp:include page="/include/leeumFooter.jsp"></jsp:include>

<script src="js/jquery-1.12.4.min.js"></script>
<script src="js/leeumExhibition.js"></script>
</body>
</html>