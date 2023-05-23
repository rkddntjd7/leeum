<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leeum</title>
<link rel="stylesheet" href="css/leeumCollection.css">
</head>
<body>

<jsp:include page="/include/leeumHeader.jsp"></jsp:include>

<!-- Collection -->
    <div class="hero-col"></div>
    <div class="container-col">
        <div class="content-col">
            <h3 class="title-col">소장품</h3>
            <div class="col-search">
                <form action="" id="searchForm-col" name="searchForm">
                    <select name="condition" id="condition-col">
                        <option value>전체</option>
                        <option value="1">현재 전시중</option>
                        <option value="2">도자기</option>
                        <option value="3">서화</option>
                        <option value="4">불교미술</option>
                        <option value="5">금속 · 목공예</option>
                    </select>
                    <input type="text" id="searchKey" name="searchKey">
                    <button type="submit" class="search-btn">검색</button>
                </form>
            </div>
            <ul class="col-list">
                <!-- LOOP -->
                <li>
                    <span class="col-img">
                        <img src="images/col-list01.jpg" alt="col-img">
                    </span>
                    <div class="col-title">
                        <p class="list-title-col">안중식 체화정망영광도</p>
                        <p class="detail-col">1915년 비단ㆍ수묵담채</p>
                        <span>-</span>
                    </div>
                </li>
                <!-- /LOOP -->
            </ul>
            
    <div class="pagenum-col">
        <a href="#"  class="pagenum-line-col"><span>1</span></a>
        <a href="#"><span>2</span></a>
        <a href="#"><span>3</span></a>
        <a href="#"><span>4</span></a>
        <a href="#"><span>5</span></a>
    </div>   
        </div>
    </div> 
    <!-- /Collection -->

<jsp:include page="/include/leeumFooter.jsp"></jsp:include>

    <script src="js/collection.js"></script>
</body>
</html>