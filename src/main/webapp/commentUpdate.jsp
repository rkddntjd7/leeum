<%@page import="user.UserDTO"%>
<%@page import="user.UserDAO"%>
<%@page import="board.Comment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.BoardBean"%>
<%@page import="board.BoardDAO"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/leeumCommentUpdate.css">
<body>

	<%
		String userID = null;
		if(session.getAttribute("uid") != null){
			userID = (String)session.getAttribute("uid");
		}
		int bbsID = 0;
		if(request.getParameter("bbsID") != null)
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		if(bbsID == 0){
			PrintWriter script=response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href='leeumNotice.jsp'");
			script.println("</script>");
		}
		
		Comment bID = new BoardDAO().getBbsID(bbsID);
		
		int commentID = 0;
		if(request.getParameter("commentID") != null)
			commentID = Integer.parseInt(request.getParameter("commentID"));
		
		String commentContent = null;
		if(request.getParameter("commentContent") != null)
			commentContent = request.getParameter("commentContent");
		
		Comment comment = new BoardDAO().getComment(commentID);
	%>
	<%
	//int num = Integer.parseInt(request.getParameter("num").trim()); // 공백 제거 후 정수형으로 바뀜

	// 데이터베이스 접근
	BoardDAO bdao = new BoardDAO();
	// boardbean 타입으로 하나의 게시글을 리턴
	BoardBean bean = bdao.getOneBoard(bbsID);
	
	UserDTO udto = new UserDTO();
	Comment cmt = new Comment();
	%>

	<jsp:include page="/include/leeumHeader.jsp"></jsp:include>

	<div class="container">
		<div class="box">
			<div class="top">
				<div class="writer">
					<p><%=bean.getWriter() %></p>
				</div>
				<div class="wdate">
					<p><%=bean.getWdate() %></p>
				</div>
				<div class="readcount">
					<p><i class="fa-regular fa-eye"></i><%=bean.getReadcount() %></p>
				</div>
			</div>
			<div class="row">
				<div class="num">
					<p><%= bean.getNum() %></p>
				</div>
				<div class="subject">
					<p><%=bean.getSubject() %></p>
				</div>
			</div>
			<div class="content">
				<p><%=bean.getContent() %></p>
			</div>
			<input type="button" value="수정하기" onclick="location.href='BoardUpdateForm.jsp?num=<%=bean.getNum() %>'" />
			<input type="button" value="삭제하기" onclick="location.href='BoardDeleteForm.jsp?num=<%=bean.getNum() %>'" />
			<input type="button" value="전체 게시글 보기" onclick="location.href='BoardList.jsp'" />
		</div>
		<h3>COMMENT</h3>
			<div class="row comment-table">
	            <form method="post" action="commentUpdateAction.jsp">
	            <input type="hidden" name="bbsID" value="<%= bbsID %>">
	            <input type="hidden" name="userID" value="<%= userID %>">
	            <input type="hidden" name="commentID" value="<%= commentID %>">
	            <table class="table table-bordered">
	           
	               <tbody>
	                  <tr>
	                     <td align="left"><%= userID %></td>
	                  </tr>
	                  <tr>
	                     <td>
	                     	<textarea class="form-control" placeholder="댓글 쓰기" name="commentContent" maxlength="300"></textarea>
	                     </td>
	                  </tr>
	               </tbody>
	            </table>
	            <div class="comment-button">
	            	<input type="submit" id="cmtCnt-btn" value="수정 &#xF0D9;">
	            </div>
	            </form>
	      </div>
		
	</div>

	<jsp:include page="/include/leeumFooter.jsp"></jsp:include>
</body>
</html>
