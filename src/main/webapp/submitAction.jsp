
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="board.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<jsp:useBean id="comment" class="board.Comment" scope="page"/>
<jsp:setProperty name="comment" property="commentContent" />
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<%	
		BoardBean bean = new BoardBean();
		BoardDAO bdao = new BoardDAO();
		String userID = (String)session.getAttribute("uid");
		if(userID == null){
	         PrintWriter script = response.getWriter();
	         script.println("<script>");
	         script.println("alert('로그인 후 이용해주세요.')");
	         script.println("location.href = 'leeumLogin.jsp'");
	         script.println("</script>");
	    }
		else{
			int bbsID = 0; 
            if (request.getParameter("bbsID") != null){
               bbsID = Integer.parseInt(request.getParameter("bbsID"));
            }
            
            if (bbsID == 0){
               PrintWriter script = response.getWriter();
               script.println("<script>");
               script.println("alert('유효하지 않은 글입니다.')");
               script.println("location.href = 'leeumNotice.jsp'");
               script.println("</script>");
            }
            if (comment.getCommentContent() == null){
               PrintWriter script = response.getWriter();
               script.println("<script>");
               script.println("alert('댓글을 입력해주세요.')");
               script.println("history.back()");
               script.println("</script>");
            } else {
                int result = bdao.write(comment.getCommentContent(),userID, bbsID, comment.getCommentID());
                if (result == -1){
                   PrintWriter script = response.getWriter();
                   script.println("<script>");
                   script.println("alert('댓글 쓰기에 실패했습니다.')");
                   script.println("history.back()");
                   script.println("</script>");
                } else {
                  PrintWriter script = response.getWriter();
                  script.println("<script>");
                  script.println("location.href=document.referrer;");
                  script.println("</script>");
               }
               
            }
         }
		
	%>
</body>
</html>