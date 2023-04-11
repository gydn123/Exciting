<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<style>
body {
	background-color: #f9f9f9;
	font-family: Arial, sans-serif;
}

.jumbotron {
	background-color: #ffffff;
	border-radius: 20px;
	box-shadow: 0px 0px 10px #dcdcdc;
	padding: 50px;
}

.promotion-title {
	font-weight: bold;
	font-size: 36px;
	color: #bd0000;
	text-shadow: 1px 1px #f2f2f2;
	margin-bottom: 30px;
}

.promotion-desc {
	font-size: 18px;
	color: #707070;
	margin-bottom: 50px;
}

.ticket-price {
	font-size: 24px;
	font-weight: bold;
	color: #bd0000;
}

.learn-more-btn {
	background-color: #bd0000;
	border: none;
	border-radius: 5px;
	color: #ffffff;
	font-size: 18px;
	font-weight: bold;
	padding: 10px 20px;
	text-transform: uppercase;
	transition: background-color 0.2s ease-in-out;
}

.learn-more-btn:hover {
	background-color: #9c0000;
	cursor: pointer;
}

.promotion-img {
	width: 100%;
	height: 100%;
}

.container {
	position: relative;
	padding-bottom: 80px;
	/* Adjust this value based on your footer height */
}

footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 80px; /* Adjust this value to match your footer height */
}
</style>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container mt-5 text-center">
		<img src="${data.promotion_img}" alt="Promotion Image"
			class="promotion-img">
		<div class="container mt-5">
			<div class="jumbotron">
				<h1 class="promotion-title display-4 mb-4">${data.promotion_name}</h1>
				<p class="promotion-desc mb-5">${data.promotion_content}</p>
				<h2 class="ticket-title">티켓 가격</h2>
				<table class="table table-striped">
					<tbody>
						 <tr>
                            <td>성인 (종일권)</td>
                            <td><del>${data.ticket_adult_free}</del></td>
                            <td>${data.ticket_adult_free*0.7}</td>
                        </tr>
                        <tr>
                            <td>성인 (오후권)</td>
                            <td><del>${data.ticket_adult_afternoon}</del></td>
                            <td>${data.ticket_adult_afternoon*0.7}</td>
                        </tr>
                        <tr>
                            <td>청소년 (종일권)</td>
                            <td><del>${data.ticket_student_free}</del></td>
                            <td>${data.ticket_student_free*0.7}</td>
                        </tr>
                        <tr>
                            <td>청소년 (오후권)</td>
                            <td><del>${data.ticket_student_afternoon}</del></td>
                            <td>${data.ticket_student_afternoon*0.7}</td>
                        </tr>
                        <tr>
                            <td>아동 (종일권)</td>
                            <td><del>${data.ticket_kids_free}</del></td>
                            <td>${data.ticket_kids_free*0.7}</td>
                        </tr>
                        <tr>
                            <td>아동 (오후권)</td>
                            <td><del>${data.ticket_kids_afternoon}</del></td>
                            <td>${data.ticket_kids_afternoon*0.7}</td>
                        </tr>
                        <tr>
                            <td colspan="3"><b>30% 할인 중입니다!</b></td>
                        </tr>
					</tbody>
				</table>
				<button class="learn-more-btn btn-lg"
				 onclick="location.href='order?promotion_id=${data.promotion_id}&member_id=kim'" role="button">구매 하러 가기</button>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>