<%@page import="board.BoardBean"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/leeumBoardUpdate.css">
<body>
	
<%
	// 해당 게시글번호를 통하여 게시글을 수정
	int num = Integer.parseInt(request.getParameter("num").trim());
	
	// 하나의 게시글에 대한 정보를 리턴
	BoardDAO bdao = new BoardDAO();

	BoardBean bean = bdao.getOneUpdateBoard(num);
%>


<jsp:include page="/include/leeumHeader.jsp"></jsp:include>

<form action="BoardUpdateProc.jsp" method="post">
	<div class="container2">
		<div class="box">
		<h2> -게시글 수정- </h2>
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
					<input type="text" name="subject" value="<%=bean.getSubject() %>" />
				</div>
				<div class="password">
					<span>비밀번호 확인</span><input type="password" name="password" />
				</div>
			</div>
			<div class="content">
				<textarea name="content"  cols="30" rows="10"></textarea>
			</div>
			<div class="buttons">
				<input type="hidden" name="num" value="<%=bean.getNum() %>" />
				<input type="submit" value="글 수정" />
				<input type="button" onclick="location.href='leeumNotice.jsp'" value="전체글보기" />
			</div>
		</div>
	</div>
	</form>

	<jsp:include page="/include/leeumFooter.jsp"></jsp:include>



</body>
</html>