<%@page import="user.UserDTO"%>
<%@page import="user.UserDAO"%>
<%@page import="board.Comment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.BoardBean"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
.container {
	width: 1000px;
	margin: 0 auto;
}

.box {
	text-align: center;
	width: 1000px;
	height: 100%
}

.top {
	display: flex;
}

.row {
	display: flex;
}

.row div {
	border: 1px solid #ddd;
}

.num {
	width: 20%;
}

.subject {
	width: 80%;
}

.writer {
	width: 65px;
	border: none;
}

.wdate {
	width: 100px;
	margin-left: 20px;
}

.readcount {
	width: 60px;
}

.content {
	border: 1px solid #ddd;
	height: 100%;
	text-align: left;
}

input {
	width: 120px;
	height: 30px;
	background: #fff;
	border-radius: 6px;
	border-width: 1px;
	margin: 30px 10px;
}
.form-control {
	width: 1000px;
	height: 100px;
}
input[type="submit"] {
	font-family: RemixIcon;
}
#cmtCnt-btn {
	background: #000;
    border: none;
    border-radius: 10px;
    float: right;
    color: #fff;
    margin: 0px;
    margin-top: 10px;
    height: 40px;
    width: 90px;
}
.comment-table {
	justify-content: center;
	margin-bottom: 60px;
}
.comment-list {
	padding-bottom: 20px;
	border-bottom: 1px solid #ccc;
	margin-bottom: 20px;
}
.row.cmtLsit-top {
	justify-content: space-between;
	margin-bottom: 15px;
}
.row.cmtLsit-top div {
	border: none;
}
.right a {
	margin-left: 10px;
}
</style>
<body>

	<%
		String userID = (String)session.getAttribute("uid");
	%>
	<%  
		int bbsID = 0;
		if(request.getParameter("num")!=null)
			bbsID = Integer.parseInt(request.getParameter("num"));
	
		int commentID = 0;
		if(request.getParameter("commentID") != null)
			commentID=Integer.parseInt(request.getParameter("commentID"));
		Comment cmt = new BoardDAO().getComment(commentID);
		
	%>
	<%
	int num = Integer.parseInt(request.getParameter("num").trim()); // 공백 제거 후 정수형으로 바뀜

	// 데이터베이스 접근
	BoardDAO bdao = new BoardDAO();
	// boardbean 타입으로 하나의 게시글을 리턴
	BoardBean bean = bdao.getOneBoard(num);
	
	UserDTO udto = new UserDTO();
	Comment comment = new Comment();
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
					<p><%=bean.getNum() %></p>
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
	            <form method="post" action="submitAction.jsp">
	            <input type="hidden" name="bbsID" value="<%= bbsID %>">
	            <input type="hidden" name="userID" value="<%= userID %>">
	            <table class="table table-bordered">
	           
	               <tbody>
	                <%
						if(userID != null){
					%>
	                  <tr>
	                     <td align="left"><%= userID %></td>
	                  </tr>
	                <%
						}else{
	                %>
	                 <tr>
	                     <td align="left"></td>
	                  </tr>
	               <%
						}
	               %>
	                  <tr>
	                     <td>
	                     	<textarea class="form-control" placeholder="댓글 쓰기" name="commentContent" maxlength="300"></textarea>
	                     </td>
	                  </tr>
	               </tbody>
	            </table>
	            <div class="comment-button">
	            	<input type="submit" id="cmtCnt-btn" value="등록 &#xF0D9;">
	            </div>
	            </form>
	      </div>
		
            <table class="table">
               <tbody>
               <tr>
                  <%
                     BoardDAO dao = new BoardDAO();
                 	 ArrayList<Comment> list = dao.getList(bean.getNum());
                     for(int i=0; i<list.size(); i++){
                  %>
                  <div class="comment-list">
                  	<div class="row cmtLsit-top">
                  		<div class="left">
                  			<div class="left-top"><%= list.get(i).getUserID() %></div>
                  			<div class="left-bottom"><%= list.get(i).getCommentDate().substring(0,11) %></div>
                  		</div>
                  		<div class="right">
                  			<a href="commentUpdate.jsp?bbsID=<%=bbsID%>&commentID=<%=list.get(i).getCommentID()%>" class="edit">수정</a>
                  			<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="commentDeleteAction.jsp?bbsID=<%=bbsID%>&commentID=<%=list.get(i).getCommentID() %>" class="btn btn-danger">삭제</a>
                  		</div>
                  	</div>
                  	<div><%= list.get(i).getCommentContent() %></div>
                  </div>
                  <%
                     }
                  %>
                  </tr>
            </table>
      
	</div>

	<jsp:include page="/include/leeumFooter.jsp"></jsp:include>
</body>
</html>
