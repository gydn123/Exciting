<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lnag="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.7.js"></script>
<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>
<script language="javascript"
	src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<title>네이버 회원가입</title>
<link rel="stylesheet" href="style.css">
<script src="login.js"></script>
<style>
body {
	background-color: #f5f6f7;
}

select {
	width: 85px;
	height: 25px;
	outline: none;
	background: #f5f6f7;
	border: 1px solid #999;
}

a {
	color: black;
	text-decoration: none;
}

.main {
	text-align: center;
	margin-top: 20px;
}

input {
	cursor: pointer
}

/*언어설정*/
.select-lang {
	text-align: right;
	padding-right: 10px;
}
/*네이버 로고설정*/
.image {
	height: 32px;
	padding: 20px;
}
/*input 아이디박스*/
.login-id-wrap {
	margin: 0px 10px 8px 10px;
	padding: 10px;
	border: solid 1px #dadada;
	background: #fff;
}
/*input 아이디 form*/
#input-id {
	border: none;
	outline: none;
	width: 100%;
}
/*input 패스워드박스*/
.login-pw-wrap {
	margin: 0px 10px 8px 10px;
	padding: 10px;
	border: solid 1px #dadada;
	background: #fff;
}
/*input 패스워드 form*/
#input-pw {
	border: none;
	outline: none;
	width: 100%;
}
/*로그인버튼박스*/
.login-btn-wrap {
	height: 52px;
	line-height: 55px;
	margin: 0px 10px 8px 10px;
	border: solid 1px rgba(0, 0, 0, .1);
	background-color: #03c75a;
	color: #fff;
	cursor: pointer;
}
/*로그인버튼*/
#login-btn {
	width: 100px;
	background-color: #03c75a;
	border: none;
	color: #fff;
	font-size: 18px;
	outline: none;
	cursor: pointer;
}
/*로그인 아래 박스*/
.under-login {
	height: 50px;
	border-bottom: 1px solid gainsboro;
	margin: 0px 10px 35px 10px;
}
/*로그인상태유지*/
.stay-check {
	margin-left: 7px;
	float: left;
}
/*로그인상태유지 체크박스*/
.stay-check input[type="checkbox"] {
	/*기존 체크박스 숨기기*/
	position: absolute;
	width: 0px;
	position: absolute;
}

.stay-check input[type="checkbox"]+label {
	display: inline-block;
	position: relative;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.stay-check input[type="checkbox"]+label::before {
	content: ' ';
	display: inline-block;
	width: 22px;
	height: 22px;
	line-height: 18px;
	margin: -2px 8px 0 0;
	text-align: center;
	vertical-align: middle;
	background: #fafafa;
	border: 1px solid #cacece;
	border-radius: 50%;
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
		rgba(0, 0, 0, 0.05);
}

.stay-check input[type="checkbox"]:checked+label::before {
	content: '\2713';
	color: white;
	text-shadow: 1px 1px white;
	background: #03c75a;
	border-color: #03c75a;
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
		rgba(0, 0, 0, 0.05);
}
/*IP보안 표시X*/
#ip-check {
	display: none;
}
/*IP보안 ON/OFF*/
#ip-context {
	color: rgb(160, 160, 160);
	font-weight: 900;
	display: inline-block;
	width: 22px;
}
/*간편한 로그인 구역*/
#easy-login-wrap {
	height: 90px;
	margin: 0px 10px 35px 10px;
}
/*간편한 로그인 텍스트*/
.easy-login {
	font-size: 20px;
	font-weight: 500;
}
/*QR & 일회용 로그인 박스 구역*/
.easy-login-box {
	display: grid;
	grid-template-columns: 1fr 1fr;
}
/*QR코드 로그인*/
.qr-login {
	float: left;
	border: 1px solid #03c75a;
	background-color: #fff;
	margin: 0px 4px 0px 0px;
	line-height: 55px;
}
/*일회용 번호 로그인*/
.onetime-login {
	float: right;
	border: 1px solid #03c75a;
	background-color: #fff;
	margin: 0px 0px 0px 4px;
	line-height: 55px;
}
/*더욱 간편한 로그인-en모드*/
.qr-login-en, .facebook-login, .line-login {
	font-family: Helvetica, Dotum, sans-serif;
	font-size: 18px;
	font-weight: 400;
	text-align: left;
	line-height: 55px;
	border: solid 1px #dadada;
	background: #fff;
	margin-bottom: 10px;
}
/*더욱 간편한 로그인 이미지-en모드*/
.easy-login-box-en img {
	display: inline-block;
	vertical-align: middle;
	margin: 0 10px 0 10px;
}
/*찾기 및 회원가입*/
.find-signup-wrap {
	height: 100px;
	grid-template-columns: 1fr 1fr 1fr;
}
/*찾기 및 회원가입 글자 희미하게 바꾸기*/
.find-signup-wrap a {
	color: rgb(150, 150, 150);
	text-decoration: none;
	font-weight: 500;
}

.find-signup-wrap span {
	color: rgb(150, 150, 150);
	font-weight: 500;
}
/*아이디 찾기*/
.find-id {
	margin: 3px;
	font-size: 14px;
	border-right: 1px solid gainsboro;
}
/*아이디 찾기-en모드*/
.find-id-en {
	font-size: 14px;
}
/*비밀번호 찾기*/
.find-pw {
	margin: 3px;
	font-size: 14px;
	border-right: 1px solid gainsboro;
}
/*회원가입*/
.sign-up {
	margin: 3px;
	font-size: 14px;
}
/*저작권 표시X*/
footer {
	display: none;
}

/*가로 800px 이상일때*/
@media ( min-width : 800px) {
	.main {
		width: 460px;
		margin: auto;
	}

	/*언어설정*/
	.select-lang {
		margin-top: 20px;
		width: 550px;
		padding-right: 10px;
	}
	/*네이버 로고설정*/
	.image {
		margin-top: 40px;
		width: 350px;
		height: 100px;
		padding: 20px;
	}

	/*IP보안 표시*/
	#ip-check {
		margin-right: 7px;
		float: right;
		display: block;
	}

	/*저작권 표시*/
	footer {
		display: block;
	}
}

/*회원가입 부분*/
.main-signup {
	text-align: center;
	width: 460px;
	margin: auto;
}

h3 {
	margin: 19px 0px 8px;
	text-align: left;
	font-size: 14px;
	font-family: Dotum, '돋움', Helvetica, sans-serif;
}

.signup-input {
	display: flex;
	/* margin: 0px 10px 8px 10px; */
	padding: 10px;
	border: solid 1px #dadada;
	background: #fff;
	cursor: pointer;
}

.signup-input-c {
	display: flex;
	/* margin: 0px 10px 8px 10px; */
	padding: 10px;
	border: solid 1px #dadada;
	background: #f5f6f7;
	cursor: pointer;
}

.signup-input-c input {
	background: #f5f6f7;
}

#signup-id, #signup-pw, #signup-pww {
	height: 29px;
	border: none;
	outline: none;
	width: 100%;
}

.signup-at {
	color: rgb(150, 150, 150);
	font-size: 15px;
	font-family: Dotum, '돋움', Helvetica, sans-serif;
	margin-top: 8px;
}

.pw-lock {
	/* content: ''; */
	/* display: inline-block; */
	top: 50%;
	right: 13px;
	width: 90px;
	height: 24px;
	margin-top: 1px;
	background-image: url("/resources/img/pw_basic.png");
	background-size: auto;
	cursor: pointer;
}

.pww-lock {
	/* content: ''; */
	/* display: inline-block; */
	top: 50%;
	right: 13px;
	width: 30px;
	height: 24px;
	margin-top: 1px;
	background-image: url("/resources/img/pww_basic.png");
	background-size: auto;
	cursor: pointer;
}

.signup-input-birth {
	display: block;
	position: relative;
	width: 100%;
	height: 51px;
	border: solid 1px #dadada;
	padding: 10px;
	background: #fff;
	box-sizing: border-box;
}

.signup-email-start {
	display: block;
	position: relative;
	width: 80%;
	height: 51px;
	border: solid 1px #dadada;
	padding: 10px;
	background: #fff;
	box-sizing: border-box;
}


.signup-email-middle {
	display: block;
	position: relative;
	width: 20%;
	height: 51px;
	padding: 10px;
	background: #f5f6f7;
	box-sizing: border-box;
}

.signup-email-end {
	display: block;
	position: relative;
	width: 80%;
	height: 51px;
	border: solid 1px #dadada;
	padding: 10px;
	background: #fff;
	box-sizing: border-box;
}

#signup-birth-yy, #signup-birth-mm, #signup-birth-dd {
	width: 113px;
	height: 29px;
	border: none;
	outline: none;
}

#signup-email,#signup-email-select {
	width: 200px;
	height: 29px;
	border: none;
	outline: none;
}

#signup-name, #signup-gender, #signup-email, #signup-country,
	#signup-phone, #signup-cnum {
	width: 100%;
	height: 29px;
	border: none;
	outline: none;
}

#signup-gender {
	background-color: white;
}

#signup-country {
	background-color: white;
}

#signup-birth-mm {
	background-color: white;
}
/*본인 확인 이메일*/
.choice {
	display: flex;
}

.choice span {
	margin-top: 20px;
	color: rgb(150, 150, 150);
	font-size: 13px;
	font-family: Dotum, '돋움', Helvetica, sans-serif;
}
/*회원가입버튼박스*/
.signup-btn-wrap {
	height: 52px;
	line-height: 55px;
	margin: 10px 0px 50px 0px;
	border: solid 1px #87CEFA;
	background-color: #1E90FF;
	font-size: 18px;
	color: #fff;
	cursor: pointer;
}
/*회원가입버튼*/
#signup-btn {
	width: 100px;
	background-color: #03c75a;
	border: none;
	color: #fff;
	font-size: 18px;
	outline: none;
	cursor: pointer;
}
/*인증번호버튼박스*/
.cnum-btn-wrap {
	height: 52px;
	line-height: 55px;
	margin: 10px 0px 0px 10px;
	border: solid 1px rgba(0, 0, 0, .1);
	background-color: #03c75a;
	color: #fff;
	cursor: pointer;
}
/*인증번호버튼*/
#cnum-btn {
	width: 115px;
	background-color: #03c75a;
	border: none;
	color: #fff;
	font-size: 15px;
	outline: none;
	cursor: pointer;
}
</style>

</head>

<body>

	<div class="main-signup">
		<!--웹페이지 상단-->
		<header>
			<!--NAVER LOGO-->
			<div class="logo">
				<a href="/" target="_blank" title="EXCITINGAMUSEMENT"><img
					src="/resources/img/excitingamusement.png" class="image"></a>
			</div>
		</header>

		<!--회원가입 부분-->
		<section class="signup-wrap">
			<form action="/signUp" id="form" method="post">
				<div>
					<!--아이디,비번,비번재확인-->

					<h3>아이디</h3>
					<span class="signup-input"> <input id="signup-id"
						type="text" name="member_id"></input> <!-- <span class="signup-at">@naver.com</span> -->
					</span> <span style="text-align: left;" class="alert alert-positive"></span>

					<h3>비밀번호</h3>
					<span class="signup-input"> <input id="signup-pw"
						type="password" name="m_pass"></input> <span class="pw-lock"></span>
					</span>
					<div class="pwvalidation" id="pwvalidation">
						<font id="pwfont" size="2" color="red"></font>
					</div>

					<h3>비밀번호 재확인</h3>
					<span class="signup-input"> <input id="signup-pww"
						type="password" name="m_pass2"></input> <span class="pww-lock"></span>
					</span>
					<div class="alertpw alertpw-success" id="alertpw-success">
						<font size="2" color="blue">비밀번호가 일치합니다.</font>
					</div>
					<div class="alertpw alertpw-danger" id="alertpw-danger">
						<font size="2" color="red">비밀번호가 일치하지 않습니다.</font>
					</div>

				</div>

				<div style="margin-top: 35px;">
					<!--이름,생년월일,성별,이메일-->
					<h3>이름</h3>
					<span class="signup-input"> <input id="signup-name"
						type="text" name="m_name"></input>
					</span> <span style="text-align: left;" class="alertname"></span>

					<h3>생년월일</h3>
					<span style="display: flex;"> <span
						class="signup-input-birth"> <input id="signup-birth-yy"
							type="text" placeholder="년(4자)" name="year"></input>
					</span> <span class="signup-input-birth" style="margin-left: 10px;">
							<select id="signup-birth-mm" class="selectbox" name="month"
							onchange="">
								<option value="month">월</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
						</select>
					</span> <span class="signup-input-birth" style="margin-left: 10px;">
							<input id="signup-birth-dd" type="text" name="day"
							placeholder="일"></input>
					</span>
					</span>
					<div style="text-align: left;" class="alertbirth"></div>

					<h3>성별</h3>
					<span class="signup-input"> <select id="signup-gender"
						class="selectbox" name="m_gender" onchange="">
							<option value="gender">성별</option>
							<option value="man">남자</option>
							<option value="woman">여자</option>
							<option value="no">선택 안함</option>
					</select>
					</span> 
					<span style="text-align: left;" class="alertgender"></span>
				</div>
				
				<h3>이메일</h3>
					<span style="display: flex;"> 
					<span class="signup-email-start"> 
					<input id="signup-email" type="text" placeholder="@제외" name="m_emailfront"></input>
					</span>
					<span class="signup-email-middle" style="margin-left: 10px;">@</span>
					<span class="signup-email-end"> 
					<input id="signup-email" type="text" placeholder="" name="m_emailback"></input>
					</span>
					<span class="signup-input-birth" style="margin-left: 10px;">
							<select id="signup-birth-mm" class="selectbox" name="m_emailselect"
							onchange="">
								<option value="">직접입력</option>
								<option value="naver.com">naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="google.com">google.com</option>
						</select>
					</span> 
					</span>
					<div style="text-align: left;" class="alertemail"></div>
				<div style="margin-top: 35px;">
					<!--휴대전화-->
					<h3>주소</h3>
					<div style="display: flex;">
						<span class="signup-input"
							style="width: 100%; margin: 10px 0px 0px 0px"> <input
							id="signup-phone" name="m_address" type="text" placeholder="주소 입력"></input>
						</span> 
					</div>
					<span style="text-align: left;" class="alertaddress"></span>
				</div>

				<div style="margin-top: 35px;">
					<!--휴대전화-->
					<h3>휴대전화</h3>
					<div style="display: flex;">
						<span class="signup-input"
							style="width: 100%; margin: 10px 0px 30px 0px"> <input
							id="signup-phone" name="m_phone" type="text" placeholder="전화번호 입력"></input>
						</span> 
					</div>
					<span style="text-align: left;" class="alertphone"></span>
				</div>

				<div>
					<!--가입하기-->
					<div class="signup-btn-wrap">
					가입하기
					</div>
				</div>
			</form>
		</section>

		<!--저작권 정보-->
		<footer>
			<div class="copyright-wrap" style="font-size: 12px;">
				<span>이용약관 | 개인정보처리방침 | 책임의 한계와 고지 | 회원정보 고객센터</span>
				<div>© EXICINT AMUSEMENT Corp.</div>
			</div>
		</footer>

	</div>
	<script>
	
	/*키 유효성 검사  */
/*    $("input[name=m_height]").blur(function(){
	   
	   var m_height = $(this).val().trim();
	   var pattern1 = /[0-9]/;
	   if(!pattern1.test(m_height)){
		   $(".digit").html("<font size='2' color='red'>숫자로 입력해주세요.</font>");
	   }else if(pattern1.test(m_height)){
		   $(".digit").html("");
	   }
	   
	}); */
   
   </script>


	<script>
  function checkz() {
          //아이디 공백 확인
         if($("#member_id").val() == ""){
             alert("아이디를 입력해주세요.");
             $("#member_id").focus();
             return false;
           } else {
               return true;
              }

       //비밀번호
         if(!getCheck.test($("#m_pass").val())) {
         alert("형식에 맞는 비밀번호를 입력해주세요.");
         $("#m_pass").val("");
         $("#m_pass").focus();
         return false;
         }

         //아이디랑 비밀번호랑 같은지
         if ($("#member_id").val()==($("#m_pass").val())) {
         alert("아이디와 비밀번호가 같으면 안됩니다.");
         $("#m_pass").val("");
         $("#m_pass").focus();
         return false;
         }          
   }
</script>

	<!--  비밀번호 일치 / 불일치   -->
	<script type="text/javascript"> 
$(function(){
   
   $(".signup-btn-wrap").on('click',function(){
	  	console.log(".signup-btn-wrap 진입");
		if($('input[name=member_id]').val() == ''){
			$('.alert').html("<font size='2' color='red'>필수 입력값 입니다.</font>");
			return false;
		};
		if($('input[name=m_name]').val() == ''){
			$('.alertname').html("<font size='2' color='red'>필수 입력값 입니다.</font>");
			return false;
		};
		if($('input[name=year]').val() == ''){
			$('.alertbirth').html("<font size='2' color='red'>필수 입력값 입니다.</font>");
			return false; 
		};
		if($('input[name=month]').val() == ''){
			$('.alertbirth').html("<font size='2' color='red'>필수 입력값 입니다.</font>");
			return false;
		};
		if($('input[name=day]').val() == ''){
			$('.alertbirth').html("<font size='2' color='red'>필수 입력값 입니다.</font>");
			return false;
		};
		if($('input[name=m_gender]').val() == ''){
			$('.alertgender').html("<font size='2' color='red'>필수 입력값 입니다.</font>");
			return false;
		};
		if($('input[name=m_address]').val() == ''){
			$('.alertaddress').html("<font size='2' color='red'>필수 입력값 입니다.</font>");
			return false;
		};
		if($('input[name=m_phone]').val() == ''){
			$('.alertphone').html("<font size='2' color='red'>필수 입력값 입니다.</font>");
			return false;
		};
		
		$('#form').submit();
		
	   
   });
	
   $("#alertpw-success").hide(); 
   $("#alertpw-danger").hide();
   $("#signup-pww").keyup(function(){
        var m_pass = $("#signup-pw").val();
        var m_pass2 = $("#signup-pww").val();
        console.log("signup-pw :"+m_pass);
        console.log("signup-pww :"+m_pass2);
          if(m_pass != "" || m_pass2 != ""){
              if(m_pass == m_pass2){
                  $("#alertpw-success").show();
                   $("#alertpw-danger").hide();
                    $("#signup-btn").removeAttr("disabled");
                    $(".pww-lock").css('background-image', 'url(/resources/img/pww_correct.png)');
                     }else{
                         $("#alertpw-success").hide();
                          $("#alertpw-danger").show();
                          $(".pww-lock").css('background-image', 'url(/resources/img/pww_basic.png)');
                           $("#signup-btn").attr("disabled", "disabled");
                            }
                 }
    });
   
    $("#pwvalidation").hide();
   	$("#signup-pw").blur(function(){
		
   		pwCheck();

   	})
   	
   	$("#signup-birth-yy").blur(function(){
   		var birthyy = $(this).val();
  
   		if(birthyy < 1920 || birthyy > 2022){
       	   $(".alertbirth").html("<font size='2' color='red'>유효한 출생년도를 입력해주세요.</font>");
       	   return false;
        }else if(birthyy.search(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/) > 0 || birthyy.search(/[a-z]/ig) > 0){
           $(".alertbirth").html("<font size='2' color='red'>숫자로만 입력해주세요.</font>");
           return false;
        }else{
        $(".alertbirth").html("");
        }
   	});
   	
  	$('input[name=m_address]').blur(function(){
   		var address = $(this).val();
			  		
   		if(address != ""){
       	   $(".alertaddress").html("");
   		} 
   	});
  	
  	$('input[name=m_phone]').blur(function(){
   		var phone = $(this).val();
			  		
   		if(phone != ""){
       	   $(".alertphone").html("");
   		} 
   	});
   	
   	$("#signup-birth-dd").blur(function(){
   		var birthdd = $(this).val();
  
   		if(birthdd < 0 || birthdd > 31){
       	   $(".alertbirth").html("<font size='2' color='red'>유효한 날짜를 입력해주세요.</font>");
       	   return false;
        }else if(birthdd.search(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/) > 0 || birthdd.search(/[a-z]/ig) > 0){
           $(".alertbirth").html("<font size='2' color='red'>숫자로만 입력해주세요.</font>");
           return false;
        }else{
        $(".alertbirth").html("");
        }
   	});
   	
   	$("#signup-name").blur(function(){
   		var m_name = $(this).val();
   		console.log("signup-name :" + m_name);
   		if(m_name.search(/\s/) != -1){
       	   $(".alertname").html("<font size='2' color='red'>이름에 공백을 입력할수 없습니다.</font>");
       	   return false;
        }else{
           $(".alertname").html("");
        }
   	});
   	
   	$("input[name=member_id]").blur(function(){
   	   var member_id = $(this).val();
   	   console.log("id blur 진입");
   	   
   	   if(member_id == ""){
   		   console.log("id null 진입");
   		   $(".alert").html("<font size='2' color='red'>아이디를 입력하세요.</font>");
   		   return false;
   	   }
   	   
   	   if(member_id.search(/\s/) != -1){
   		   console.log("search 진입");
   		   $(".alert").html("<font size='2' color='red'>아이디에 공백을 입력할수 없습니다.</font>");
   		   return false;
   	   }
   	   
   	   if(member_id.length < 5){
   		   $(".alert").html("<font size='2' color='red'>5글자이상 입력해주세요.</font>");
   		   return false;
   	   }
   	   
   	   /* var p = $(this).parent(); */
   	   $.post("/idCheck",{member_id:member_id},function(data){
   	/*        if (!member_id){
   	         $(".alert",p).removeClass("alert-positive").addClass("alert-negative").html("");
   	         //$("input[name=chkid]").val("");
   	      }  */
   	      if (data == 1){
   	         $(".alert").removeClass("alert-positive").addClass("alert-negative").html("<font size='2' color='red'>이미 등록된 아이디입니다</font>");
   	         //$("input[name=chkid]").val("");
   	      }else if(data == 0){
   	         $(".alert").removeClass("alert-negative").addClass("alert-positive").html("<font size='2' color='blue'>사용 가능한 아이디입니다</font>");
   	         //$("input[name=chkid]").val("on");
   	      }
   	   }); 
   	   
		pwCheck();

   	});
   	
   	$("select[name=m_emailselect]").on("change", function(){
        console.log("this.val : "+$(this).val());
        $("input[name=m_emailback]").val($(this).val());
    });

   	
});

function pwCheck(){
	
	var pw = $("#signup-pw").val();
		var id = $("#signup-id").val();
			
		var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
		var hangulcheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		 
		if(false === reg.test(pw)) {
		$("#pwvalidation").show();
		$("#pwfont").css("color","red");
		$("#pwfont").css("size","2");
		$("#pwfont").html("비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.");
		$(".pw-lock").css('background-image','url(/resources/img/pw_impossible.png)'); 
		return false;
		alert('비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.');
		}else if(/(\w)\1\1\1/.test(pw)){
			$("#pwvalidation").show();
	   		$("#pwfont").css("color","red");
	   		$("#pwfont").css("size","2");
	   		$("#pwfont").html("같은 문자를 4번 이상 사용하실 수 없습니다.");
	   		$("#pw-lock").css('background-image', 'url(/resources/img/pw_impossible.png)');
		 return false;
		 }else if(pw.search(id) > -1){
			$("#pwvalidation").show();
	   		$("#pwfont").css("color","red");
	   		$("#pwfont").css("size","2");
	   		$("#pwfont").html("비밀번호에 아이디가 포함되었습니다.");
 	   	 	$(".pw-lock").css('background-image','url(/resources/img/pw_impossible.png)'); 
		 return false;
		 }else if(pw.search(/\s/) != -1){		
			$("#pwvalidation").show();
	   		$("#pwfont").css("color","red");
	   		$("#pwfont").css("size","2");
	   		$("#pwfont").html("비밀번호는 공백 없이 입력해주세요.");
 	    	$(".pw-lock").css('background-image','url(/resources/img/pw_impossible.png)'); 
		 return false;
		 }else if(hangulcheck.test(pw)){
	   		$("#pwfont").css("color","red");
	   		$("#pwfont").css("size","2");
	   		$("#pwfont").html("비밀번호에 한글을 사용 할 수 없습니다.");
	    	$(".pw-lock").css('background-image','url(/resources/img/pw_impossible.png)'); 
		 alert("비밀번호에 한글을 사용 할 수 없습니다."); 
		 return false;
		 }else {
			$("#pwfont").css("color","blue");
	   		$("#pwfont").css("size","2");
	   		$("#pwfont").html("사용가능한 비밀번호 입니다.");
	   		$(".pw-lock").css('background-image','url(/resources/img/pw_possible.png)'); 
		 }
}

</script>

	<script>
// 서비스 이용약관 동의 내용보기
function fn_pop1() {
   var popupWidth = 800;
   var popupHeight = 550;

   var popupX = (window.screen.width / 2) - (popupWidth / 2);
   var popupY = (window.screen.height / 2) - (popupHeight / 2);
   
   var url = '${pageContext.request.contextPath}/pop1.do';
   window.open(url, 'pop1', 'status=no,scrollbars=yes, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
}

// 개인정보 수집 및 이용 동의 내용보기
   function fn_pop2() {
      var popupWidth = 800;
      var popupHeight = 550;

      var popupX = (window.screen.width / 2) - (popupWidth / 2);
      var popupY = (window.screen.height / 2) - (popupHeight / 2);
      
      var url = '${pageContext.request.contextPath}/pop2.do';
      window.open(url, 'pop2', 'status=no,scrollbars=yes, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
   }
</script>


	<script>
      // 전체 동의 체크
        $(document).ready(function () {
            $('#all_check').change(function () {
                if (this.checked) {
                    $('#check1').attr('checked', true) + $('#check2').attr('checked', true) + $('#check3').attr('checked', true);
                } else {
                    $('#check1').attr('checked', false) + $('#check2').attr('checked', false) + $('#check3').attr('checked', false);
                }
            });
        });
</script>

</body>

</html>