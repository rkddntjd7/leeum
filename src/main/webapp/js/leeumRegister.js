const ubi = /([0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1,2][0-9]|3[0,1]))/;
const upw = /^[a-zA-Z0-9]{10,12}$/;
const ut = /^\d{2,3}-\d{3,4}-\d{4}$/;

function sPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            var address = ''; // 주소 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                address = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                address = data.jibunAddress;
            }
            var extraRoadAddr = ""; //참고항목 
            //도로명에 동,로,가가 있는 경우 추가
            if(data.bname !== '' &&/[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            //건물명, 공동주택 추가
            if(data.bname !== '' && data.apartment === 'Y'){
                extraRoadAddr += (extraRoadAddr !== ''?','+data.buildingName : data.buildingName);
            }
            //표시할 참고항목이 있을 경우
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

             // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('upostcode').value = data.zonecode;
            document.getElementById("uaddr").value = address;
            document.getElementById("uaddr").value += extraRoadAddr;
            // 커서를 상세주소 필드로 이동한다.
            
        }
    }).open();
}


function infoConfirm(){
	const uname = document.getElementById("uname");
	const ubirth = document.getElementById("ubirth");
	const uid = document.getElementById("uid");
	const upass = document.getElementById("upass");
	const upassch = document.getElementById("upassch");
	const utel = document.getElementById("utel");
	const uemail = document.getElementById("uemail");
	const upostcode = document.getElementById("upostcode");
	const udetailaddr = document.getElementById("udetailaddr");
	
	
	if(uname.value.length == 0){
		alert("이름을 입력해주세요.");
		uname.focus();
		return;
	}
	if(!ubi.test(ubirth.value)){
		alert("생년월일을 똑바로 입력해주세요.")
		ubirth.value = "";
		ubirth.focus();
		return;
	}
	if(uid.value.length < 4){
		alert("아이디는 4글자 이상이어야 합니다.")
		userid.focus();
		return;
	}
	if(!upw.test(upass.value)){
		alert("비밀번호는 영문,숫자 10~12자리 이내에 입력해주세요")
		upass.value = "";
		upass.focus();
		return;
	}
	if(upass.value != upassch.value){
		alert("비밀번호가 다릅니다. 비밀번호를 다시 확인하세요.");
		upassch.value="";
		upassch.focus();
		return;
	}
	if(!ut.test(utel.value)){
		alert("전화번호를 다시 입력해주세요")
		utel.value = "";
		utel.focus();
		return;
	}
	if(uemail.value==""){
		alert("이메일을 입력 하세요.");
		uemail.focus();
		return;
	}
	if(upostcode.value==""){
		alert("주소를 입력 하세요.");
		upostcode.focus();
		return;
	}
	if(udetailaddr.value==""){
		alert("상세주소를 입력 하세요.");
		udetailaddr.focus();
		return;
	}
	
	document.rgi.submit();
}


function idCheck(){
	const url = "idCheck.jsp";
	const width=500, height=350;
	let left = (document.body.offsetWidth / 2) - (width / 2);
	let top = (document.body.offsetHeight / 2) - (height);
	left += window.screenLeft;
	
	window.open(
		url, 
		"popup", 
		`width=${width}, 
		 height=${height}, 
		 left=${left}, 
		 top=${top}`
    );
}

