<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leeum</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/leeumFooter.css">
</head>
<body>
<footer class="flex-md-nowrap flex-sm-wrap">
        <div class="footer-left">
            <div class="footer-left-top">
                <span>리움미술관</span><br>
                <span>서울특별시 용산구 이태원로55길 60-16 04348</span><br>
                <span>(Tel) 02-2014-6900</span>
            </div>
            <div class="footer-left-bottom">
                <span class="emailOpen" id="emailOpen" name="emailOpen" tabindex="0">이메일 문의</span><br>
                <span class="marginLeft rejectionOpen" id="rejectionOpen" tabindex="0">이메일 무단수집 거부</span><br>
                <span class="priOpen" id="priOpen" tabindex="0">개인정보 처리방침</span>
            </div>
        </div>

        <div class="footer-right">
            <div class="footer-right-top">
                <div class="footer-link">
                    <span><i class="fa-sharp fa-solid fa-arrow-right-long"></i></span>
                    <span><a href="#">멤버십안내</a></span>
                    <span><a href="#">관람안내</a></span>
                    <span><a href="#">공지사항</a></span>
                    <span><a href="#">FAQ</a></span>
                </div>
                <div class="footer-link">
                    <span><i class="fa-sharp fa-solid fa-arrow-right-long"></i></span>
                    <span><a href="#">Instagram</a></span>
                    <span><a href="#">Youtube</a></span>
                    <span><a href="#">Facebook</a></span>
                </div>
                <div class="footer-link">
                    <span><i class="fa-sharp fa-solid fa-arrow-right-long"></i></span>
                    <span><a href="#">예약 ・ 예매</a></span>
                    <span><a href="#">리움스토어</a></span>
                </div>
            </div>
            <div class="footer-right-bottom">
                <span>&copy; Leeum Museum of Art. All Rights reserved.</span>
                <select name="forma" onchange="location = this.value;" title="패밀리사이트 선택">
                    <option value="#">Family Site</option>
                    <option value="http://www.samsungculture.org/index.asp">삼성문화재단</option>
                    <option value="http://www.hoammuseum.org/html/main/index.asp">호암미술관</option>
                </select>            
            </div>
        </div>
    </footer>
</body>
</html>
