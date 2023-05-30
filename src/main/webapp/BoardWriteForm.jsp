<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/leeumBoardWrite.css">
<body>
	<jsp:include page="/include/leeumHeader.jsp"></jsp:include>

	<div class="container2">
		<h1>-게시글 쓰기-</h1>
		<form action="BoardWriteProc.jsp" method="post">
			<div class="formbox">
				<div class="row">

					<div>
						<label for=""> 제목 </label> <input type="text" name="subject"
							id="subject" />
					</div>
				</div>
				<div class="row">
					<div>
						<label for=""> 작성자 </label> <input type="text" name="writer" id="writer"/>
					</div>
					<div>
						<label for=""> 비밀번호 </label> <input type="password"
							name="password" id="password"/>
					</div>
				</div>
				<div>
					<textarea name="content" cols="100" rows="50" placeholder="글 내용"></textarea>
				</div>
				<div class="button">
					<input type="submit" value="글쓰기" /> &nbsp; &nbsp; <input
						type="reset" value="다시작성" /> &nbsp; &nbsp;
					<button onclick="location.href='leeumNotice.jsp'">전체 게시글 보기</button>
				</div>
			</div>
		</form>
	</div>

	<jsp:include page="/include/leeumFooter.jsp"></jsp:include>
</body>
</html>