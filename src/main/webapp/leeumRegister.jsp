<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leeum</title>

<link rel="stylesheet" href="css/leeumRegister.css">
</head>
<body>

<jsp:include page="/include/leeumHeader.jsp"></jsp:include>

<div class="container-rgi">
    <h4 class="title-rgi">회원가입</h4>

    <div class="content-rgi">
        <div class="subtitle-rgi">
            회원 정보 입력
        </div>
        <form name="rgi" class="rgi" action="leeumRegisterAction.jsp" method="post">
            <div class="row-rgi m-none-rgi">
                <label class="form-label-rgi"> 이름 </label>
                <input type="text" id="uname" name="uname" placeholder="이름을 입력해 주세요" />
            </div>
            <div class="row-rgi">
                <label class="form-label-rgi"> 생년월일 </label>
                <input type="text" id="ubirth" name="ubirth" placeholder="YYMMDD" />
            </div>
            <div class="row-rgi">
                <label class="form-label-rgi"> 아이디 </label>
                <input type="text" id="uid" name="uid" placeholder="아이디는 4글자 이상이어야 합니다." />
                <input type="button" value="중복확인" id="uidCheck" onclick="idCheck()">
            </div>
            <div class="row-rgi">
                <label class="form-label-rgi"> 비밀번호 </label>
                <input type="password" id="upass" name="upass" placeholder="영문, 숫자 10~12자리 이내를 입력해 주세요." />
            </div>
            <div class="row-rgi">
                <label class="form-label-rgi"> 비밀번호 확인 </label>
                <input type="password" id="upassch" name="upassch" placeholder="비밀번호를 한번 더 입력해주세요." />
            </div>
            <div class="row-rgi">
                <label class="form-label-rgi"> 핸드폰 </label>
                <input type="text" name="utel" id="utel" placeholder="000-0000-0000">
            </div>
            <div class="row-rgi">
                <label class="form-label-rgi"> 이메일 </label>
                <input type="email" id="uemail" name="uemail" placeholder="이메일 형식으로 입력해주세요." />
            </div>
            <div class="row-rgi">
                <label class="form-label-rgi"> 주소 </label>
                <div class="add-rgi">
                    <input type="number" id="upostcode" name="upostcode" placeholder="우편번호"  readonly />
                    <button type="button" class="btn-rgi post-btn-rgi" onclick="sPostcode();">우편번호 검색
                    <i class="ri-road-map-line"></i></button>
                    <br />
                    <input type="text" name="uaddr" id="uaddr" readonly />
                    <br />
                    <input type="text" name="udetailaddr" id="udetailaddr"placeholder="상세주소" />
                </div>
            </div>
            <div class="row-rgi">
                <label class="form-label-rgi" id="ugender"> 성별 </label>
                <input type="radio" id="ugender-m" name="ugender" value="남자" checked/>남자
                <input type="radio" id="ugender-f" name="ugender" value="여자" />여자
            </div>
            <div class="row-rgi">
                <label class="form-label-rgi"> 뉴스레터수신 동의<br /> (선택사항) </label>
                <div class="agree-rgi">
                    <label>리움미술관에서 보내는 뉴스레터, 혜택 안내를 위한 소식을 이메일, 문자로 받으실 수 있습니다. <br />
                        수신 여부는 리움 미술관 홈페이지에서 언제든지 변경할 수 있습니다.</label>
                    <div class="agree-btn-rgi" id=uagree>
                        <input type="radio" id="agree" name="agree" value="동의" checked/>동의
                        <input type="radio" id="disagree" name="agree" value="동의안함" />동의안함
                    </div>
                </div>
            </div>        
            <div class="submitbtn-rgi">
                <input type="button" value="확인  >" onclick="infoConfirm();">
                <button type="reset">취소 <i class="ri-arrow-right-s-line"></i></button>
            </div>
            <input type="hidden" id="wdate" name="wdate">
        </form>
    </div>
</div>

<jsp:include page="/include/leeumFooter.jsp"></jsp:include>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="js/leeumRegister.js"></script>
</body>
</html>