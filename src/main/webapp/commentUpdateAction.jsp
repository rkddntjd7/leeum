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
		String userID = null;
		if(session.getAttribute("uid") != null){
			userID = (String)session.getAttribute("uid");
		}
		if(userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
	         script.println("alert('로그인 후 이용해주세요.')");
	         script.println("location.href = 'leeumLogin.jsp'");
	         script.println("</script>");
		}
		int bbsID = 0;
		if(request.getParameter("bbsID") != null)
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		int commentID = 0;
		if(request.getParameter("commentID") != null)
			commentID = Integer.parseInt(request.getParameter("commentID"));
		if(commentID == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href='leeumNotice.jsp'");
			script.println("</script>");
		}
		Comment comment = new BoardDAO().getComment(commentID);
		if(!userID.equals(comment.getUserID())){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("location.href='leeumNotice.jsp'");
			script.println("</script>");
		} else {
			if(request.getParameter("commentContent") == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("hostory.back()");
				script.println("</script>");
			} else {
				BoardDAO bdao = new BoardDAO();
				int result =  bdao.update(bbsID, commentID, request.getParameter("commentContent"));
				if (result == -1){
					PrintWriter script=response.getWriter();
					script.println("<script>");
					script.println("alert('댓글 수정에 실패했습니다.')");
					script.println("hostory.back()");
					script.println("</script>");
				} else {
					PrintWriter script=response.getWriter();
					script.println("<script>");
					script.println("location.href = \"BoardInfo.jsp?num="+bbsID+"\"");
					script.println("</script>");
				}
			}
		}
    %>
</body>
</html>