<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%session.invalidate(); %>
	
	<script>
		alert("로그아웃 되었습니다.");
		location.href='leeumMain.jsp';
	</script>
</body>
</html>