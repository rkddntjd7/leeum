<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = (String)session.getAttribute("uid");
		if(userID == null){
	         PrintWriter script = response.getWriter();
	         script.println("<script>");
	         script.println("alert('로그인을 하세요')");
	         script.println("location.href = 'leeumLogin.jsp'");
	         script.println("</script>");
	    }
		int bbsID = 0; 
        if (request.getParameter("bbsID") != null){
           bbsID = Integer.parseInt(request.getParameter("bbsID"));
        }
        
	%>
</body>
</html>