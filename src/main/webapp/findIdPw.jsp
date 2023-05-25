<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

  </head>

  <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">

	<div class="card align-middle" style="width:25rem;">
		<div class="card-title" style="margin-top:30px;">
           <img src="images/logo.png"/>
		</div>
        
		<div class="card-body">
      <form action="FindIdPw" class="form-signin" method="POST">
  	
        <input type="text" name="uname" id="uname" class="form-control" placeholder="이름" required autofocus><BR>
        <input type="email" name="uemail" id="uemail" class="form-control" placeholder="이메일" required><br>

        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit" placeholder = "이름을 입력해주세요." >
        	아 이 디 찾 기</button>
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit" placeholder = "이메일을 입력해주세요." >
        	<a href = "findPwResult.jsp">비 밀 번 호 찾 기</a></button>
      
      </form>
        
		</div>
        <div class="links">
            <a href="leeumLogin.jsp">로그인</a>   |   <a href="leeumRegister.jsp">회원가입</a>

        </div>
	</div>
   <script src = "js/leeumFindIdPw.js"></script>
  </body>
</html>