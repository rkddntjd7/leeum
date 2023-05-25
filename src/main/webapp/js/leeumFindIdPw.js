function findIdPw(){
	const url = "/Leeum/findIdPw.jsp";
	const width = 700, height = 700;
	 
	let left = (document.body.offsetWidth / 2) - (width / 2);
	let top = (document.body.offsetHeight / 2) - (height / 2);
	left += window.screenLeft;
	
	window.open(
		url, 
		"popup", 
		`width=${width}, 
		 height=${height}, 
		 left=${left}, 
		 top=${top}`
	  
    );
	
	window.close();
    
}

function findPw(){
	const uname = document.getElementById("uname");
	const uemail = document.getElementById("uemail");
	
	if(uname.value=""){
		alert("이름을 입력하세요.");
		uname.focus();
		return false;
	}else if(uemail.value==""){
		alert ("이메일을 입력하세요.");
		uemail.focus();
		return false;
	}
}

function findBirth(){
	const ubirth = document.getElementById("ubirth");
	
	
	if(ubirth.value=""){
		alert("이름을 입력하세요.");
		ubirth.focus();
		return false;
	}
}