<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leeum</title>
<link rel="stylesheet" href="css/leeumLogin.css">
</head>
<body>

<jsp:include page="/include/leeumHeader.jsp"></jsp:include>

<div class="container">
	<section class="members">
        <div class="membersContent">
            <ul class="membersLogin">
                <div>
                    <form action="membersLogin.jsp" name="membersLogin" id="membersLogin" method="post">
                        <input type="hidden" name="mLogin" value="mLogin">
                        <li class="membersLogin-title">
                            <span>Member's Lounge</span>
                        </li>
                        <li class="membersLogin-subtitle">
                            <span>멤버스 로그인</span>
                        </li>
                        <li class="membersLogin-content">
                            <span>멤버스 라운지는 멤버십 전용 페이지 입니다. <br>
                                    멤버십 가입 후 이용하실 수 있습니다.</span>
                        </li>
                        <li class="membersLogin-input">
                            <span>아이디</span>
                            <input type="text" id="uid" name="uid" maxlength="20" title="아이디">
                        </li>
                        <li class="membersLogin-input">
                            <span>비밀번호</span>
                            <input type="password" id="upass" name="upass" maxlength="12" title="비밀번호">
                        </li>
                        <li class="membersLogin-find">
                            <a href="#" onclick ="findIdPw();"><span>아이디 / 비밀번호 찾기</span></a>
                        </li>
                        <li class="membersLogin-Login">
                            <button type="submit">로그인<i class="fa-sharp fa-solid fa-arrow-right-long"></i></button>
                        </li>
                        <li class="membersLogin-question">
                            <span>아직 멤버십 회원이 아니신가요?</span>
                        </li>
                        <li class="membersLogin-join">
                            <span><a href="leeumJoin.jsp">멤버십 가입</a></span>
                            <span><i class="fa-sharp fa-solid fa-arrow-right-long"></i></span>
                        </li>
                        <li class="membersLogin-join">
                            <span><a href="leeumMembers.jsp">멤버십 혜택 안내</a></span>
                            <span><i class="fa-sharp fa-solid fa-arrow-right-long"></i></span>
                        </li>

                    </form>
                </div>
            </ul>
        </div>
    </section>
</div>

<jsp:include page="/include/leeumFooter.jsp"></jsp:include>
<script src = "js/leeumFindIdPw.js"></script>
</body>
</html>