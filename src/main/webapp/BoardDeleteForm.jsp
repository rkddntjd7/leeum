<%@page import="board.BoardBean"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/leeumBoardDelete.css">
<body>
<%
	BoardDAO bdao = new BoardDAO();

	int num = Integer.parseInt(request.getParameter("num"));
	
	// 하나의 게시글을 리턴
	BoardBean bean = bdao.getOneUpdateBoard(num);
	
	
%>

<jsp:include page="/include/leeumHeader.jsp"></jsp:include>

<form action="BoardDeleteProc.jsp" method="post">
	<div class="container">
		<div class="box">
		<h2> -게시글 삭제- </h2>
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
				<div class="password">
					<span>비밀번호 확인</span><input type="password" name="password" />
				</div>
			</div>
			<div class="content">
				<p><%=bean.getContent() %></p>
			</div>
			<div class="buttons">
				<input type="hidden" name="num" value="<%=bean.getNum() %>" />
				<input type="submit" value="글 삭제" />
				<input type="button" onclick="location.href='leeumNotice.jsp'" value="전체글보기" />
			</div>
		</div>
	</div>
	</form>

	<jsp:include page="/include/leeumFooter.jsp"></jsp:include>
</body>
</html>