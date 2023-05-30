<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "user.UserDAO, user.UserDTO, java.io.PrintWriter" session="true" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%-- <jsp:useBean id="user" class="user.UserDTO" scope="page"/> --%>
<%-- <jsp:setProperty name="user" property="uid"/>
<jsp:setProperty name="user" property="upass"/> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
        UserDAO userDAO = new UserDAO();
    	UserDTO userDTO = new UserDTO();
    	session.setAttribute("uid", request.getParameter("uid"));
    	userDTO.setUid((String) request.getParameter("uid"));
    	userDTO.setUpass((String) request.getParameter("upass"));
        int result = userDAO.login(userDTO.getUid(), userDTO.getUpass());
        if (result == 1){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('로그인에 성공했습니다.')");
            script.println("location.href = 'leeumMain.jsp'");
            script.println("</script>");
        }
        else if (result == 0){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('로그인 실패!!')");
            script.println("history.back()");   //이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
    %>
</body>
</html>