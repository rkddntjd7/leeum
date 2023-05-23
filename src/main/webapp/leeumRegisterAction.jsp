<%@ page import="user.UserDTO, user.UserDAO, java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.UserDTO" scope="page"/>
<jsp:setProperty name="user" property="uname"/>
<jsp:setProperty name="user" property="ubirth"/>
<jsp:setProperty name="user" property="uid"/>
<jsp:setProperty name="user" property="upass"/>
<jsp:setProperty name="user" property="utel"/>
<jsp:setProperty name="user" property="uemail"/>
<jsp:setProperty name="user" property="upostcode"/>
<jsp:setProperty name="user" property="uaddr"/>
<jsp:setProperty name="user" property="udetailaddr"/>
<jsp:setProperty name="user" property="ugender"/>
<jsp:setProperty name="user" property="agree"/>
<jsp:setProperty name="user" property="wdate"/>

<%
	// 로그인이 된 유저는 회원가입페이지 들어갈 수 없게 하는 소스
	String uid = null;
	if(session.getAttribute("uid") != null){
		uid = (String) session.getAttribute("uid");
	}
	
	// 입력 안된 부분이 있을 시 회원가입 시에 사용자가 입력을 안한 모든 경우 팝업 띄워주고 다시 돌려보낸다.
	if(user.getUid() == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.');");
		script.println("history.back()");
		script.println("</script>");
	}else{
		UserDAO userDAO = new UserDAO();
		int result = userDAO.join(user);
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 존재하는 아이디 입니다.');");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == 1){
			session.setAttribute("uid", user.getUid());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('회원가입 성공')");
			script.println("location.href='leeumLogin.jsp'");
			script.println("</script>");
		}
		
	}
%>
	

</body>
</html>