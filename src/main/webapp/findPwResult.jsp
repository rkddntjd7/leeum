<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="user.UserDTO" %>
<!DOCTYPE html>
<html lang="ko-kr">
 <head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/leeumFindIdPw.css">
    <title>아이디 찾기</title>
	<style>
	body{
		padding-top : 0;
	}
	div-card{
		margin-top : 300px;
	}
	
	</style>
  </head>
  
  <body>
  <jsp:useBean id="dto" class = "user.UserDTO">
  	<jsp:setProperty name ="dto" property = "*" />
  </jsp:useBean>
		<jsp:include page="/include/leeumHeader.jsp"></jsp:include>
		
	<div class="card align-middle" style="width:25rem;">
		<div class="card-title" style="margin-top:30px;">
           <img src="images/logo.png"/>
		</div>
        
		<div class="card-body">
      <form action="findId" class="form-signin" method="POST">
  		 <div class = "text">
  		 	<p>고객님의 비밀번호는 <%=dto.getUpass() %> 입니다</p>
  		 </div>
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block btn-rs" type="submit">
        	<a href = "leeumLogin.jsp">로 그 인</a></button>
        	
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block btn-rs" type="submit">
        	<a href = "leeumRegister.jsp">회 원 가 입</a></button>	
      
      </form>
        
		</div>

	</div>
	<script src = "js/leeumFindIdPw.js"></script>
	
	<jsp:include page="/include/leeumFooter.jsp"></jsp:include>
	
  </body>
</html>