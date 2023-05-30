<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복확인</title>

<style type="text/css">
	h2{
		text-align: center;
		background: #eee;
	}

	.idCheckBox{
		width: 400px;
		margin: 50px auto;
	}
	

	span{
		display: inline-block;
		width: 200px;
		height: 50px;
		margin-left: 130px;
		margin-top: 20px;

	}

</style>

</head>
<body>
<h2>아이디 중복확인</h2>
		<form name="check" action="idCheck2.jsp" method="post">
			<div class="idCheckBox">
                <label class="form-label-rgi"> 아이디 </label>
                <input type="text" id="uid idChk" name="uid" size="35" style="text-align:center; width:300px; height:30px;" placeholder="영문, 숫자 10~12자리 이내를 입력해 주세요." />
                <span>
                <button type="reset">지우기</button>
                <button type="submit">확인하기</button>
                </span>
            </div> 
		</form> 
            
            
		
	
</body>
</html>