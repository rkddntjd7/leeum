<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<%
request.setCharacterEncoding("utf-8"); // 한글 처리
%>

<!-- 게시글을 작성한 데이터를 한번에 읽음 -->
<jsp:useBean id="boardbean" class="board.BoardBean">
	<jsp:setProperty name="boardbean" property="*" />
</jsp:useBean>

<%
	// 데이터 베이스 쪽으로 빈클래스를 넘겨줌
	BoardDAO bdao = new BoardDAO();

	// 데이터 저장 메소드 호출
	bdao.insertBoard(boardbean);
	
	// 게시글 저장 후 전체게시글 보기
	response.sendRedirect("leeumNotice.jsp");
%>

</body>
</html>