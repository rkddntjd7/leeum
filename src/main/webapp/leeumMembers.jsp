<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leeum</title>
<link rel="stylesheet" href="css/leeumMembers.css">
</head>
<body>
<jsp:include page="/include/leeumHeader.jsp"></jsp:include>


<div class="container">
<section class="membership">
        <div class="membership-title">
            <ul>
                <li>멤버십안내</li>
            </ul>
            <ul>
                <div class="membership-line"></div>
            </ul>
        </div>

        <div class="membership-info flex-row">
            <div class="membership-menu">
                <ul class="flex-col">
                    <button onclick="scroll_move('1')" class="active">리움 프렌즈</button>
                    <button onclick="scroll_move('2')">리움 패밀리</button>
                    <button onclick="scroll_move('3')">기프트 멤버십 프렌즈</button>
                    <button onclick="scroll_move('4')">기프트 멤버십 패밀리</button>
                    <button onclick="scroll_move('5')">자주 찾는 질문</button>
                    <button onclick="scroll_move('6')">법인회원</button>
                    <button onclick="scroll_move('7')">제휴 할인</button>
                    <button onclick="scroll_move('8')">멤버십 프로그램</button>
                </ul>
            </div>

            <div class="membership-content">
                <!-- 리움 프렌즈 카드 -->
                <div class="leeum-card flex-row border-bottom-ddd" id="move1">
                    <div class="card">
                        <p>리움 프렌즈</p>
                        <img src="images/mem_card_friends.jpg" alt="membership_card_friends">
                    </div>
                    <div class="card-text">
                        <div class="card-text-top flex-row border-bottom-ddd">
                            <div class="card-text-top-left flex-col w50">
                                <span>회비</span>
                                <span>10만원 / 1년</span>
                            </div>
                            <div class="card-text-top-right flex-col w50">
                                <span>가입방법</span>
                                <span>리움 홈페이지 (leeum.org)를 통한 온라인 가입</span>
                                <span>리움 멤버십 데스크 현장 구매</span>
                                <span id="whitebox">회원약관 보기 <i class="fa-sharp fa-solid fa-arrow-right"></i></span>
                                <span id="graybox">리움 프렌즈 신청하기 <i class="fa-sharp fa-solid fa-arrow-right"></i></span>
                            </div>
                        </div>
                        <div class="card-text-bottom flex-row">
                            <div class="card-text-bottom-left flex-col w50">
                                <span>관람 혜택</span>
                                <span>리움 / 호암미술관 본인 무료 입장</span>
                                <span>리움 방문 예약 불필요 (상시 바로 입장 가능)</span>
                                <span>디지털 가이드 무료 대여</span>
                            </div>
                            <div class="card-text-bottom-right flex-row w50">
                                <div class="card-text-bottom-right-one flex-col w50">
                                    <span>할인혜택</span>
                                    <span>리움 유료강좌 프로그램 <br> 20% 할인</span>   
                                    <span>리움 카페 10% 할인 <br> (일부 상품 제외)</span> 
                                    <span>리움 스토어 10% 할인 <br> (일부 상품 제외)</span>  
                                </div>
                                <div class="card-text-bottom-right-two flex-col w50">
                                    <span>부가 혜택</span>
                                    <span>기획전 프리뷰, 음악회 등 <br> 회원 전용 프로그램 참여</span>
                                    <span>문화 예술 관련 온라인 <br> 뉴스레터 제공 등</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 리움 패밀리 카드 -->
                <div class="leeum-card flex-row border-bottom-ddd">
                    <div class="card" id="move2">
                        <p>리움 패밀리</p>
                        <img src="images/mem_card_family.jpg" alt="membership_card_family">
                    </div>
                    <div class="card-text card-text-two" >
                        <div class="card-text-top flex-row border-bottom-ddd">
                            <div class="card-text-top-left flex-col w50">
                                <span>회비</span>
                                <span>30만원 / 1년 (1인)</span>
                            </div>
                            <div class="card-text-top-right flex-col w50">
                                <span>가입방법</span>
                                <span>리움 홈페이지 (leeum.org)를 통한 온라인 가입</span>
                                <span id="whitebox">회원약관 보기 <i class="fa-sharp fa-solid fa-arrow-right"></i></span>
                                <span id="graybox">리움 프렌즈 신청하기 <i class="fa-sharp fa-solid fa-arrow-right"></i></span>
                            </div>
                        </div>
                        <div class="card-text-mid">
                            <span>50만원 / 1년 (2인)</span>
                            <div>
                                <span>담당자에게 문의 안내, 신청 및 결제는 별도 진행</span>
                                <span id="graybox">담당자에게 문의하기<i class="fa-sharp fa-solid fa-arrow-right"></i></span>
                            </div>
                        </div>
                        <div class="card-text-bottom flex-row">
                            <div class="card-text-bottom-left flex-col w50">
                                <span>관람 혜택</span>
                                <span>30만원 : 리움 / 호암미술관 무료 입장 (본인 + 3인)</span>
                                <span>50만원 : 리움 / 호암미술관 무료 입장 (본인 + 3인) X 2</span>
                                <span id="bold">공통</span>
                                <span>리움 방문 예약 불필요 (상시 바로 입장 가능)</span>
                                <span>디지털 가이드 무료 대여</span>
                                <span>선물용 초대권 (리움 무료 관람권) 5매</span>
                            </div>
                            <div class="card-text-bottom-right flex-row w50">
                                <div class="card-text-bottom-right-one flex-col w50">
                                    <span>할인혜택</span>
                                    <span>리움 유료강좌 프로그램 <br> 20% 할인</span>   
                                    <span>리움 카페 10% 할인 <br> (일부 상품 제외)</span> 
                                    <span>리움 스토어 10% 할인 <br> (일부 상품 제외)</span>  
                                </div>
                                <div class="card-text-bottom-right-two flex-col w50">
                                    <span>부가 혜택</span>
                                    <span>기획전 프리뷰, 음악회 <br> 다르게보기, 보존실 투어 등 <br> 회원 전용 프로그램 참여</span>
                                    <span>문화 예술 관련 온라인 <br> 뉴스레터 매주 제공 <br> 회원사 VIP 전시 설명 <br> (50구좌당 1회/1년)등</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 기프트 멤버십 프렌즈 -->
                <div class="leeum-card height1 flex-row border-bottom-ddd">
                    <div class="card mt-20" id="move3">
                        <p>기프트 멤버십 프렌즈</p>
                        <img src="images/mem_card_gift.jpg" alt="gift_membership_friends">
                    </div>
                    <div class="card-text" >
                        <div class="gmf-first ml-20 mt-40 flex-col border-bottom-ddd">
                            <span>가격</span>
                            <span>10만원 (10개 이상 구매시 10% 할인)</span>
                        </div>
                        <div class="gmf-second ml-20 mt-40 flex-row border-bottom-ddd">
                            <div>
                                <span>멤버십 혜택 기간</span>
                                <span>사용등록일로부터 1년간</span>
                            </div>
                            <div>
                                <span>혜택</span>
                                <span>리움 프렌즈 멤버십과 동일합니다.</span>
                                <span>사용자로 지정된 분이 <br> 기프트 멤버십 
                                        사용등록을 마치면 <br> 리움 프렌즈 회원이 됩니다.</span>
                            </div>
                        </div>
                        <div class="gmf-third ml-20 mt-40 flex-row border-bottom-ddd">
                            <div>
                                <span>사용등록 기간</span>
                                <span>구매일로부터 6개월 이내</span>
                            </div>
                            <div>
                                <span id="normal">구매시에 사용자로 지정된분에 한하여 <br> 사용등록이 가능하며, <br> 구매시에 등록하신 휴대폰 번호로 <br> 사용등록기간 도래 알림 문자를 보내 드립니다.</span>
                                <span>사용등록 기간 경과 후에는 10% 수수료 <br> (구매 당시의 리움멤버십 프렌즈 연회비 기준)를 <br> 납부하셔야 사용등록이 가능하며, <br> 구매일로부터 5년 경과 후에는 사용등록이 불가능합니다.</span>
                                <span>리움멤버십 프렌즈의 연회비가 인상된 경우, <br> 사용등록 기간 내에는 차액 지불없이 사용등록이 <br> 가능하며, 사용등록 기간 경과 후에는 인상분을 <br> 납부하셔야 사용등록이 가능합니다.</span>
                            </div>
                        </div>
                        <div class="gmf-fourth ml-20 mt-40 flex-row border-bottom-ddd">
                            <div>
                                <span>사용 등록방법</span>
                                <span>선물 받으신 분께서 사용등록을 하셔야  <br> 회원 혜택이 개시됩니다.</span>
                            </div>
                            <div>
                                <span id="normal">현장등록 - 리움 멤버십데스크 <br> (오전 10시 ~ 오후 5시, 월요일 제외)</span>
                                <span>홈페이지 등록 - www.leeum.org - 방문안내 <br> - 멤버십 안내 - 기프트 멤버십 - 사용등록</span>
                                <span>사용자 등록에 대한 상세 안내서가 <br> 선물 패키지 안에 들어있습니다.</span>
                                <span id="whitebox">기프트 멤버십 사용 등록 <i class="fa-sharp fa-solid fa-arrow-right"></i></span>
                            </div>
                        </div>
                        <div class="gmf-fifth ml-20 mt-40 flex-row border-bottom-ddd">
                            <div>
                                <span>구매방법</span>
                                <span>현장과 온라인 구매 모두 가능합니다.</span>
                            </div>
                            <div>
                                <span id="normal">현장구매: 소정의 신청서를 작성한 후, <br> 현금 · 무통장입금 · 신용카드 결제하시면 됩니다.</span>
                                <span>온라인 구매: www.leeum.org - 방문안내 <br> - 멤버십안내 - 기프트 멤버십 - 구매</span>
                                <span id="graybox">기프트 멤버십 구매하기 <i class="fa-sharp fa-solid fa-arrow-right"></i></span>
                            </div>
                        </div>
                        <div class="gmf-last ml-20 mt-40 flex-row border-bottom-ddd">
                            <div>
                                <span>구매취소 및 환불</span>
                                <span>구매취소 및 환불의사를 전달하고 패키지를 <br> 반납한 날짜를 환불기준일로 하며, <br> 영업일 기준 10일 이내로 환불이 이루어집니다.</span>
                            </div>
                            <div>
                                <span id="normal">환불은 납부한 구매금액에서 아래의 금액을 <br> 공제하고 남은 금액을 반환합니다.</span>
                                <span>사용 등록을 하지 않은 경우 : 사용등록 기간이 지나지 <br> 않은 경우, 구매 당시의 리움멤버십 프렌즈 연회비의 5%</span>
                                <span>사용등록 기간이 지나고, 구매일로부터 5년 이내인 경우 <br> 구매 당시의 리움멤버십 프렌즈 연회비의 10%</span>
                                <span>사용 등록을 한 경우 : 리움멤버십 프렌즈 멤버십 <br> 약관에 따른 환불기준 적용</span>
                            </div>
                        </div>
                        <div class="gmf-question ml-20 mt-20">
                            <div>
                                <span>기타문의</span>
                                <span>02-2014-6900 (오전 10시 ~ 오후 18시 월요일 제외)</span>
                                <span>leeum.membership@samsung.com</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!--  -->
                <div class="leeum-card height2 flex-row border-bottom-ddd">
                    <div class="card mt-20" id="move4">
                        <p>기프트 멤버십 패밀리</p>
                        <img src="images/mem_card_gift.jpg" alt="gift_membership_family">
                    </div>
                    <div class="card-text">
                        <div class="gift-family1 ml-20 mt-40 flex-row border-bottom-ddd">
                            <div>
                                <span>가격</span>
                                <span>30만원 (1인)</span>
                                <span>50만원 (2인)</span>
                                <span>10개 이상 구매시 10% 할인</span>
                            </div>
                            <div>
                                <span>혜택</span>
                                <span>리움 패밀리 멤버십과 동일합니다.</span>
                                <span>사용자로 지정된 분이 기프트 멤버십 <br> 사용등록을 마치면 리움 패밀리 회원이 됩니다.</span>
                            </div>
                        </div>
                        <div class="gift-family1 ml-20 mt-40 flex-row border-bottom-ddd">
                            <div>
                                <span>구매방법</span>
                                <span>담당자에게 문의해주시기 바랍니다.</span>
                                <span id="graybox">담당자에게 문의하기<i class="fa-sharp fa-solid fa-arrow-right"></i></span>
                            </div>
                            <div>
                                <span>사용등록방법</span>
                                <span>기프트 멤버십 카드를 선물 받으신 분은 <br> 리움 인포데스크에서 본인 명의의 패밀리 카드로  <br> 등록하여 당일부터 바로 사용 가능합니다.</span>
                            </div>
                        </div>
                        <div class="gmf-question ml-20 mt-20">
                            <div>
                                <span>기타문의</span>
                                <span>02-2014-6900 (오전 10시 ~ 오후 18시 월요일 제외)</span>
                                <span>leeum.membership@samsung.com</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 카드 부분 완료 -->
                <!-- 자주 찾는 질문 -->
                <div class="flex-row border-bottom-ddd mt-20" id="move5">
                    <div class="question mt-20">
                        <span id="bold">자주 찾는 질문</span>
                    </div>
                    <div class="often flex-row">
                        <div class="often-left mt-20">
                            <span>회원가입 약관은 어떻게 되나요?</span>
                            <span id="whitebox">약관 보기<i class="fa-sharp fa-solid fa-arrow-right"></i></span>
                        </div>
                        <div class="often-right">
                            <span class="often-q">회원카드 수령방법은?</span>
                            <span>
                                현장 가입의 경우 즉시 수령 가능하며,
                                온라인<br>가입회원의 경우, 우편으로 발송해 드립니다.
                                <br>발송 및수령에 걸리는 시간은 
                                미술관 휴일을 <br> 제외한 7일 내외입니다.
                            </span>
                            <span class="often-q">가입신청을 한 후 언제부터 회원이 될 수 있나요?</span>
                            <span>
                                온라인으로 가입신청을 한 회원님께서는 결제를<br>
                                완료하시면 바로 회원 자격이 주어집니다. 현장가입 시,<br>
                                결제 당일부터 회원 자격이 주어집니다.
                            </span>
                            <span class="often-q">주소를 변경하고 싶습니다. 어떻게 수정할 수 있나요?</span>
                            <span>
                                초기 설정한 개인정보를 변경하시려면 02-2014-6900으로<br>
                                전화 주시면 개인정보를 수정하여 드립니다.
                            </span>
                            <span class="often-q"> 멤버십 카드를 분실하였습니다. 재발급이 가능한가요?</span>
                            <span>
                                리움 인포데스크에 오셔서 멤버십 카드 재발급을<br>
                                요청하여 주십시오. 방문 시 꼭 신분증을 지참해 주시기<br>
                                바랍니다. 기존 카드는 사용이 불가능하며, 재발급 후<br>
                                기존 카드를 찾으셨다면 폐기하여 주시기 바랍니다.
                            </span>
                        </div>
                    </div>
                </div>
                <!-- 법인 회원 -->
                <div class="corporate flex-row border-bottom-ddd" id="move6">
                    <span class="mt-20 ml-20">법인회원</span>
                    <span>
                        새로운 문화와 예술의 지평을 연 리움미술관은<br> 
                        기업과의 파트너십으로 기업의 문화 마케팅을 지원하고<br> 
                        이를 통해 국내 문화예술계 발전에 작은 힘이 되고자 합니다.<br> 
                        리움의 법인회원사가 되시면,<br> 관람 및 행사 장소 대여 등의 혜택과 더불어<br> 
                        문화예술지원 기업으로서의 사회적 이미지 고취로<br> 
                        홍보효과의 극대화를 누릴 수 있을 것입니다.<br> 
                    </span>
                </div>

                <!-- 제휴할인 -->
                <div class="discount flex-row border-bottom-ddd" id="move7"> 
                    <div class="mt-20 ml-20 w20">
                        <span>제휴할인</span>
                    </div>
                    <div class="w80">
                        <div class="dc flex-row between mt-20 border-bottom-ddd">
                            <div>
                                <img src="images/coffee.jpg" alt="coffee">
                            </div>
                            <div class="flex-col">
                                <p>업체명: 카페 36.5도</p>
                                <p>업체번호: 02-000-0000</p>
                                <p>위치: 리움박물관 1층</p>
                                <p>할인: 입장권 지참시 20% 할인</p>
                            </div>
                        </div>
                        <div class="dc flex-row between mt-20 border-bottom-ddd">
                            <div>
                                <img src="images/cake.jpg" alt="cake">
                            </div>
                            <div class="flex-col">
                                <p>업체명: 베이커리즈</p>
                                <p>업체번호: 02-000-0001</p>
                                <p>위치: 리움박물관 2층</p>
                                <p>할인: 입장권 지참시 20% 할인</p>
                            </div>
                        </div>
                        <div class="dc flex-row between mt-20 border-bottom-ddd">
                            <div>
                                <img src="images/pasta.jpg" alt="pasta">
                            </div>
                            <div class="flex-col">
                                <p>업체명: 위드 파스타</p>
                                <p>업체번호: 02-000-0002</p>
                                <p>위치: 리움박물관 건너편</p>
                                <p>할인: 입장권 지참시 5% 할인</p>
                            </div>
                        </div>
                        <div class="dc flex-row between mt-20">
                            <div>
                                <img src="images/wine.jpg" alt="wine">
                            </div>
                            <div class="flex-col">
                                <p>업체명: 리움 rooftop 808</p>
                                <p>업체번호: 02-000-0003</p>
                                <p>위치: 리움박물관 루프탑 바</p>
                                <p>할인: 입장권 지참시 10% 할인</p>
                            </div>
                        </div>
                    </div> 
                </div>

                
                <!-- membership program -->
                <div class="program" id="move8">
                    <p>MEMBERSHIP PROGRAM</p>
                        <!-- loop -->
                        <div class="program-top" id="row">
                            <div class="program-inner">
                                <img src="images/program1.png" alt="program1">
                                <p id="textbold">[조선의 백자, 군자지향] #5 조선 문인의 낭만과 정취 멤버십 사전예약</p>
                                <p>상상마당</p>
                                <p>2023.05.11.(목) 15:00-16:30</p>
                            </div>
                        </div>

                        <div class="prenext">
                            <a href="javascript:void(0)" onclick="prev()" class="prev">PREV</a> &nbsp;&nbsp;
                            <a href="javascript:void(0)" onclick="next()" class="next">NEXT</a>
                        </div>
                        <!-- loop -->  
                </div>
                <!-- membership program 끝 -->
            </div>
            <!--membership-content 끝 -->
        </div>
        <!-- membership-info 끝 -->
    </section>
</div>


<jsp:include page="/include/leeumFooter.jsp"></jsp:include>

<script src="js/program.js"></script>
<script src="js/leeumMembers.js"></script>
</body>
</html>