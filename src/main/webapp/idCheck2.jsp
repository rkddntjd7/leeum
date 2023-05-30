
<%@ page import="user.UserDTO, user.UserDAO, java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.UserDTO" scope="page"/>
<jsp:setProperty name="user" property="uid"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	UserDAO userDAO = new UserDAO();
	int result = userDAO.idCheck(user);
	if(result == 1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('중복된 아이디가 있습니다');");
		script.println("window.opener.document.getElementById('uid').value='';");
		script.println("window.close();");
		script.println("</script>");
		script.flush();
		
	}else if (result == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('사용가능한 아이디입니다.');");
		script.println("window.close();");
		script.println("</script>");
		
		
	}else if (result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('오류가 발생하였습니다.')");
		script.println("</script>");
	}
%>
</body>
</html>