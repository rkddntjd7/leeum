<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.*" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<%
		String userID = (String)session.getAttribute("uid");
		if(userID == null){
	         PrintWriter script = response.getWriter();
	         script.println("<script>");
	         script.println("alert('로그인 후 이용해주세요.')");
	         script.println("location.href = 'leeumLogin.jsp'");
	         script.println("</script>");
	    }
		int bbsID = 0; 
        if (request.getParameter("bbsID") != null){
           bbsID = Integer.parseInt(request.getParameter("bbsID"));
        }
        int commentID = 0;
        if (request.getParameter("commentID") != null){
        	commentID = Integer.parseInt(request.getParameter("commentID"));
        }
        if(commentID == 0) {
        	PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('유효하지 않은 글입니다.')");
            script.println("location.href = 'leeumNotice.jsp'");
            script.println("</script>");
        }
        Comment comment = new BoardDAO().getComment(commentID);
		if(!userID.equals(comment.getUserID())){
			PrintWriter script=response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("location.href='leeumNotice.jsp'");
			script.println("</script>");
		} else {
        	BoardDAO bdao = new BoardDAO();
        	int result = bdao.delete(commentID);
        	if(result == -1) {
        		PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('댓글삭제에 실패했습니다.')");
                script.println("history.back()");
                script.println("</script>");
        	} else {
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("location.href=document.referrer;");
                script.println("</script>");
             }
        }
    %>
</body>
</html>