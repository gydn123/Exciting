<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>index</title>
<!-- jquery cdn -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"
	integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
	crossorigin="anonymous"></script>
<!-- 부트스트랩 cdn -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<!-- 폰트 설정 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Hahmlet&display=swap"
	rel="stylesheet">
<!-- 아이콘 cdn-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<!-- 애니메이션 cdn-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

<!-- 내가만든 css -->
<style>
body {
	font-family: 'Hahmlet', serif;
}
.custom-carousel-img {
	max-width: 100%;
	height: 280px;
	object-fit: cover;
}
.custom-card-img {
	max-width: 100%;
	height: 300px;
	object-fit: cover;
}
.custom-main-padding {
	padding-bottom: 200px;
}
.custom-card-body-height {
	height: 100px;
}
</style>

<!-- 로딩 이벤트 -->
<script type="text/javascript">
function Loading() {
    var maskHeight = window.outerHeight;
    var maskWidth  = window.document.body.clientWidth;
     
    var mask       = "<div id='mask' style='position:absolute; z-index:9000; background-color:#ffffff; display:none; left:0; top:0;'></div>";
    var loadingImg ='';
     
    loadingImg +=" <div id='loadingImg'>";
    loadingImg +=" <img src='/resources/img/loading.gif' style='position:absolute; z-index:9500; display:block; margin:auto; top:50%; left:50%; transform:translate(-50%, -50%);'/>";
    loadingImg += "</div>";  
 
    $('body')
        .append(mask)
        .append(loadingImg)
    $('#mask').css({
            'width' : maskWidth,
            'height': maskHeight,
            'opacity' :'0.5'
    });
    $('#mask').show();
    $('#loadingImg').show();
}

function closeLoading() {
     $('#mask, #loadingImg').hide();
     $('#mask, #loadingImg').remove(); 
   }
   
$(function() {
   Loading();   
   setTimeout("closeLoading()", 500);
   });
</script>

<!-- 즐겨찾기 하트 애니메이션 이벤트 -->
<script>
  window.onload = function(){
	  
    var a = 0;
    
    <!-- 일정시간 이벤트 막는 변수 -->
   	let isClickable = true;
   	
   	<!-- amuse_id 선언 -->
   	var amuse_id;
   	<!-- member_id el로 받아옴 -->
   	var member_id = "${member_id}";
   	console.log(member_id);
   	
  	if(member_id == "") {
   		alert('로그인X');
   	} else {
   		alert('로그인O');
   	}
     
    var heartWraps = document.querySelectorAll('.heart-wrap');
    
    <!-- 즐겨찾기 체크 후에 하트 채우기 or 비우기 -->
     heartWraps.forEach( (heartWrap) => {
    	var heart = heartWrap.querySelector('.heart');
    	amuse_id = heartWrap.dataset.id;
			$.ajax({
				url : "/indexapi/check", // 서버의 URL
				type : "POST", // HTTP 요청 방식
				dataType : "json", // 서버가 반환하는 데이터 타입
				data : {
					"amuse_id" : amuse_id,
					"member_id" : member_id
				},
				success : function(check) {
		    	if (check['check'] == 1) {
	    	      heart.classList.add('bi-balloon-heart-fill');
	    	    } else {
	    	      heart.classList.add('bi-balloon-heart');
	    	    } 
				},
				error : function(xhr, status, error) {
					console.log("에러");
				}
			});
    }); 
		    
	  heartWraps.forEach( (heartWrap) => {
		    heartWrap.addEventListener('click', function(){
		    	var heart = document.querySelector('.heart');
		    	amuse_id = heartWrap.dataset.id;
		   		if (!isClickable) {
		    	    return;
		    	  }
					$.ajax({
						url : "/indexapi/insertDelete", // 서버의 URL
						type : "POST", // HTTP 요청 방식
						dataType : "json", // 서버가 반환하는 데이터 타입
						data : {
							"amuse_id" : amuse_id,
							"member_id" : member_id
						},
						success : function(check) {
			    	  // 일정 시간 동안 클릭 이벤트를 막기
			    	  isClickable = false;
			    	  heartWrap.classList.add('animate__bounce');
			    	  setTimeout(() => {
				    	    isClickable = true;
				    	    heartWrap.classList.remove('animate__bounce');
					          if (check['check'] == 1) {
					        	  	heartWrap.querySelector('.heart').classList.remove('bi-balloon-heart');
					            	heartWrap.querySelector('.heart').classList.add('bi-balloon-heart-fill');
					            } else {
					            	heartWrap.querySelector('.heart').classList.remove('bi-balloon-heart-fill');
					        	  	heartWrap.querySelector('.heart').classList.add('bi-balloon-heart');
					            }
				    	 }, 1000);
						},
						error : function(xhr, status, error) {
							console.log("에러");
						}
					});
				
				});
		  });
	  
	  
  }
</script>

</head>
<body>

	<header class="container mb-5">
		<div
			class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-2 border-bottom" 
			style="height: 130px;">
			<div class="col-2 ">
				<a href="/"
					class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
					<img class="card-img"
					src="https://play-lh.googleusercontent.com/W9AN3AyNH7rgBaGO7Jv2MEMk2piGUEerZTZN7hG-xNJFq6QW1Dzs4HLukka0-oKIsw"
					alt="">
				</a>
			</div>
			<!-- 헤더 a태그 주소 넣을곳-->
			<ul class="nav col-8 mb-2 justify-content-center mb-md-0">
				<li><a href="#" class="nav-link px-2 link-secondary">고객센터</a></li>
				<li><a href="#" class="nav-link px-2 link-dark">프로모션</a></li>
				<li><a href="/board/board" class="nav-link px-2 link-dark">게시판</a></li>
				<li><a href="/list" class="nav-link px-2 link-danger">놀이공원</a></li>
				<li><a href="/login" class="nav-link px-2 link-danger">로그인</a></li>
				<li><a href="/logout" class="nav-link px-2 link-danger">로그아웃</a></li>
			</ul>
			<div class="col-2 ">
				<ul class="nav justify-content-end">
					<li class="nav-item">
						<button class="btn" type="button" data-bs-toggle="offcanvas"
							data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
							<i class="bi bi-search pr-2"
								style="font-size: 1.5rem; color: cornflowerblue;"></i>
						</button>

						<div class="offcanvas offcanvas-end" tabindex="-1"
							id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
							<div class="offcanvas-header">
								<!-- 검색 -->
								<div class="offcanvas-title" id="offcanvasRightLabel">
									<form action="/list">
										<div class="row">
											<div class="col-2">
												<button class="btn" type="submit">
													<i class="bi bi-search pr-2"
														style="font-size: 1.5rem; color: cornflowerblue;"></i>
												</button>
											</div>
											<div class="col">
												<div class="form-floating mb-3">
													<input type="search" name="searchName" class="form-control"
														id="floatingInput" placeholder="놀이공원을 찾아볼까요?"> <label
														for="floatingInput">놀이공원을 찾아볼까요?</label>
												</div>
											</div>
										</div>
									</form>
								</div>
								<button type="button" class="btn-close"
									data-bs-dismiss="offcanvas" aria-label="Close"></button>
							</div>
							<div class="offcanvas-body">
								<div class="accordion" id="accordionPanelsStayOpenExample">
									<div class="accordion-item">
										<h2 class="accordion-header" id="panelsStayOpen-headingOne">
											<button class="accordion-button" type="button"
												data-bs-toggle="collapse"
												data-bs-target="#panelsStayOpen-collapseOne"
												aria-expanded="true"
												aria-controls="panelsStayOpen-collapseOne">
												<strong>국내 놀이공원</strong>
											</button>
										</h2>
										<div id="panelsStayOpen-collapseOne"
											class="accordion-collapse collapse show"
											aria-labelledby="panelsStayOpen-headingOne">
											<div class="accordion-body">
												<div class="row">
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>전국</a>
													</div>
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>서울</a>
													</div>
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>경기</a>
													</div>
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>대전</a>
													</div>
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>충청</a>
													</div>
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>대구</a>
													</div>
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>경북</a>
													</div>
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>부산</a>
													</div>
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>경남</a>
													</div>
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>광주</a>
													</div>
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>전라</a>
													</div>
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>제주</a>
													</div>
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>기타</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="accordion-item">
										<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
											<button class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse"
												data-bs-target="#panelsStayOpen-collapseTwo"
												aria-expanded="false"
												aria-controls="panelsStayOpen-collapseTwo">
												<strong>해외 놀이공원</strong>
											</button>
										</h2>
										<div id="panelsStayOpen-collapseTwo"
											class="accordion-collapse collapse"
											aria-labelledby="panelsStayOpen-headingTwo">
											<div class="accordion-body">
												<div class="row">
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>일본</a>
													</div>
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>미국</a>
													</div>
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>중국</a>
													</div>
													<div class="col-3">
														<a class="text-decoration-none text-dark" href=""><i
															class="bi bi-geo-alt"></i>기타</a>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>

							</div>
						</div>
					</li>
					<li class="nav-item">
						<!-- 마이페이지 링크 --> <a class="nav-link" href="#"><i
							class="bi bi-person-circle"
							style="font-size: 1.5rem; color: cornflowerblue;"></i></a>
					</li>
				</ul>
			</div>

		</div>
	</header>

	<main class="container custom-main-padding border-bottom">
		<div class="row">
      <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
        <c:forEach var="fData" items="${promotionData}">
          <div class="carousel-item active" >
            <img class="d-block w-100 custom-carousel-img" src="${fData.promotion_img}" alt="...">
          </div>
         </c:forEach>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </div>

		<hr>
		<div class="row pt-5 pb-2">
			<h4>
				<a class="text-decoration-none text-dark" href="#">국내 놀이공원</a>
			</h4>
		</div>
		
		<div class="album py-5 bg-light ">
			<div class="container">
					<div class="row g-5 ">
			<c:forEach items="${koreaData}" var="kData">
						<div class="col-3">
								<div class="card shadow-sm">
								<div class="position-relative">
									<a href="" class="text-decoration-none text-dark ">
										<img
											src="${kData['url']}"
											class="custom-card-img" alt="...">
									</a>
									<!-- 하트 아이콘 -->
								  <div data-id="${kData['amuse_id']}" class="animate__animated position-absolute heart-wrap" style="width: 35px; top: 10px; right: 10px;">
	                	<i class="bi heart" style="font-size: 2rem; color: red;" ></i>
	              	</div>
								</div>
									<div class="card-body custom-card-body-height overflow-hidden">
										<h5 class="card-title">${kData['a_name']}</h5>
										<p class="card-text">${kData['a_country']}</p>
									</div>
								</div>
						</div>
				</c:forEach>
					</div>
			</div>
		</div>

		<hr>
		<div class="row pt-5 pb-2">
			<h4>
				<a class="text-decoration-none text-dark" href="#">해외 놀이공원</a>
			</h4>
		</div>
		
		<div class="album py-5 bg-light ">
			<div class="container">
					<div class="row g-5 ">
			<c:forEach items="${foreignData}" var="fData">
						<div class="col-3">
								<div class="card shadow-sm">
								<div class="position-relative">
									<a href="" class="text-decoration-none text-dark ">
										<img
											src="${fData['url']}"
											class="custom-card-img" alt="...">
									</a>
									<!-- 하트 아이콘 -->
								  <div data-id="${fData['amuse_id']}" class="animate__animated position-absolute heart-wrap" style="width: 35px; top: 10px; right: 10px;">
	                	<i class="bi heart" style="font-size: 2rem; color: red;" ></i>
	              	</div>
								</div>
									<div class="card-body custom-card-body-height overflow-hidden">
										<h5 class="card-title">${fData['a_name']}</h5>
										<p class="card-text">${fData['a_country']}</p>
									</div>
								</div>
						</div>
				</c:forEach>
					</div>
			</div>
		</div>
</main>

	<footer class="container mb-5">
		<div class="row">
			<div class="col-3">
				<ul class="list-group list-group-flush">
					<li class="list-group-item">고객지원실 운영안내</li>
					<li class="list-group-item">월~금 09:30~06:30(점심시간 13:15~14:30)
					</li>
					<li class="list-group-item">주말/공휴일 제외, 한국시간 기준</li>
				</ul>
			</div>
			<div class="col-2 offset-3">
				<p>소개</p>
			</div>
			<div class="col-2">
				<p>파트너</p>
			</div>
			<div class="col-2">
				<p>지원</p>
			</div>
		</div>
	</footer>

	</div>
</body>
</html>