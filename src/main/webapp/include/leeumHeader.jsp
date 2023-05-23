<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leeum</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.2.0/remixicon.css" integrity="sha512-eRbcr5kt0vg2Kgl5BBKIqXoZ0f1lpe4ImM8GyzJN7mrhUR57xPh2JX+5Ra8zlh5QZWxEVQW9MOfMaCEEjnMcMA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/leeumHeader.css">
</head>
<body>
	<header>
		<div class="container">
    		<div class="nav">
    		
    		<!-- i (login, join, notice) -->
				<div class="quick pop">
     				<a href="javascript:void(0)">i</a>
      			</div>
      			
      			<!-- nav -->
				<ul class="gnb" >
					<li>
				   		<a href="leeumExhibition.jsp">전시</a>
				  	</li>
				    <li>
				     	<a href="leeumCollection.jsp">소장품</a>
				    </li>
					<li>
						<a href="leeumProgram.jsp">프로그램</a>
					</li>
					<li>
						<a href="leeumPlace.jsp">공간</a>
					</li>
				    <li>
				    	<a href="leeumArtist.jsp">작가</a>
				    </li>
			        <li>
			        	<a href="leeumLogin.jsp">멤버스</a>
			   		</li>
  				</ul>
                  
                <!-- logo img -->
				<div class="logo">
					<a href="leeumMain.jsp">
						<img src="images/logo.png" alt="logo">
					</a>
				</div>
                    
  			</div>
   		</div>

		<!-- i popup -->
		<div class="i-pop">
			<i class="fa-sharp fa-solid fa-xmark"></i>
			<div>
				<p><a href="leeumLogin.jsp">로그인</a></p>
				<p><a href="leeumRegister.jsp">회원가입</a></p>
				<p><a href="leeumNotice.jsp">공지사항</a></p>
			</div>
		</div>

	</header>
	<script src="js/jquery-1.12.4.min.js"></script>
	<script src="js/leeumMain.js"></script>
	
</body>
</html>