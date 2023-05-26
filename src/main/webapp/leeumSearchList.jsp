<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@page import="java.util.*"%>
<%@ page import="board.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/leeumNotice.css">
</head>
<body>

<%
	// 전체 게시물의 내용을 jsp 쪽으로 가져와야함
	BoardDAO bdao = new BoardDAO();
	BoardtheDAO thedao = new BoardtheDAO();

	ArrayList<BoardBean> list = bdao.getSearch(request.getParameter("searchField"), request.getParameter("searchText"));
		
	int cnt = bdao.getSearchCount(request.getParameter("searchField"), request.getParameter("searchText"));
	
	int pageSize = 5;   // 한 페이지당 5개씩
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null){
		pageNum = "1";
	}
	int currentPage = Integer.parseInt(pageNum);
	int startRow = (currentPage - 1) * pageSize + 1;
	int endRow = currentPage * pageSize;
	
	System.out.println(cnt);
	
	ArrayList<BoardBean> searchlist = null;
	if(cnt != 0) {
		searchlist = bdao.getSearch(request.getParameter("searchField"), request.getParameter("searchText"), startRow, pageSize);
	}
%> 

<jsp:include page="/include/leeumHeader.jsp"></jsp:include>

	<div class="hero">
        <div class="container">
            <h1>리움박물관 문의</h1>
        </div>
    </div>
        <section class="qa">
            <div class="title">
                <h1 class="txt-align">Q&A</h1>
            </div>
            
            <a class="home" href="leeumNotice.jsp">
            	<i class="ri-home-smile-line"></i>
            </a>
            
            <div class="list-title txt-align">
                <p>번호</p>
                <p>제목</p>
                <p>작성자</p>
                <p>조회수</p>
            </div>
            
<%
	if(searchlist.size() == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('검색결과가 없습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}


	for (int i = 0; i < searchlist.size(); i++) {
		BoardBean bean = searchlist.get(i); // 백터에 저장되어있는 빈클래스를 하나씩 추출
	
%>
	        <ul class="lbox list-style-none">
	            <li class="list">
	                <div class="tbox">
	                    <h1><%=bean.getNum() %></h1>
	                    <p><a href="BoardInfo.jsp?num=<%=bean.getNum()%>"><%=bean.getSubject() %></a></p>
	                </div>
	                <div class="pbox">
	                    <p><%=bean.getWriter() %></p>
	                    <p><%=bean.getReadcount() %></p>
	                </div>
	            </li>
	        </ul>
	        
<%
	}
%>

 <%
	 if(cnt != 0) {
	 	int pageCount = cnt / pageSize + (cnt % pageSize == 0? 0 : 1);
		int pageBlock = 5;
		int startPage = ((currentPage - 1) / pageBlock) * pageBlock + 1;
		int endPage = startPage + pageBlock - 1;
		if(endPage > pageCount){
			endPage = pageCount;
		}
 %>
            <div class="page txt-align">
                <div class="btn">
                <%
                	if(startPage > pageBlock){
                %>
                    <a href="leeumSearchList.jsp?pageNum=<%= startPage - pageBlock %>">
                        	 <span class="prv"><i class="fa-solid fa-angle-left"></i></span>
                    </a>
               	<%
                	}
                %>
                 	<div class="number">
                <%    
                	for(int i = startPage; i <= endPage; i++){
                %>

                        	<a href="leeumSearchList.jsp?pageNum=<%= i %>&searchField=<%= request.getParameter("searchField")%>&searchText=<%=request.getParameter("searchText") %>"><span><%= i %></span></a>
                <%
                	}
                %>
                    </div>
                <%
                	if(endPage < pageCount){
                %>
                     <a href="leeumSearchList.jsp?pageNum=<%= startPage + pageBlock %>">
                        	<span class="nxt"><i class="fa-solid fa-angle-right"></i></span>
                     </a>
                <%
                	}
                %>
                </div>
            </div>
<%
	 }
%>
            
            <div class="srch-wrt">
	            <form name=form action="leeumSearchList.jsp?pageNum=1" method=post>
	                <div class="srch">
	                	<select class="select-no" name="searchField">
						 	<option value=subject>제목</option>
						 	<option value=content>내용</option>
						 	<option value=writer>작성자</option>
					 	</select>
	                    <input onmouseover="this.focus()" type="search" id="srch-no" placeholder="검색어를 입력하세요" class="srch_btn" name="searchText">
	                    <div onclick="srchDataCheck()" >
	                    	<i class="fa-solid fa-magnifying-glass"></i>
	                    </div>
	                </div>
                </form>
                <a href="BoardWriteForm.jsp"><input type="button" value="글쓰기" class="wrt"></a>
            </div>
        </section>

<jsp:include page="/include/leeumFooter.jsp"></jsp:include>
<script src="js/leeumNotice.js"></script>
</body>
</html>