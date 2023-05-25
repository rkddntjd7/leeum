<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
<!-- 로그인 기능 -->
<!-- 성공 시 -> 메인 -->
<!-- 실패 -> 로그인 -->
<!-- 정보파라미터를 받아와서 DB, DAO -->

<%
	String uid = request.getParameter("uid");
	String upass = request.getParameter("upass");
	
	UserDAO udao = new UserDAO();
	int result = udao.login(uid, upass);
	
	if(result == 1){
		session.setAttribute("uid", uid);
%>
	<script type="text/javascript">
		location.href = "leeumMain.jsp"
	</script>
	<%
	}else{
	%>
	<script type="text/javascript">
		alert("로그인 실패");
		history.go(-1);
	</script>
	<%
	}
	%>
	
</body>
</html>