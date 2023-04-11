<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Product Details</title>
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
	font-family: 'Hahmlet', serif;
	font-size: 16px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

table {
	border-collapse: collapse;
	width: 100%;
	margin-bottom: 20px;
}

th, td {
	text-align: left;
	padding: 8px;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}

input[type=text], input[type=tel], input[type=email], textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-bottom: 16px;
	resize: vertical;
}

button[type=submit] {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button[type=submit]:hover {
	background-color: #45a049;
}

.product {
	display: flex;
	align-items: center;
	margin-bottom: 20px;
}

.product img {
	width: 350px;
	height: 200px;
	margin-right: 20px;
}

.product .name {
	font-weight: bold;
	margin-right: 20px;
}

.product .price {
	font-weight: bold;
}

.minus, .plus {
	width: 30px;
	height: 30px;
	text-align: center;
	background-color: #ccc;
	border-radius: 50%;
	border: none;
	color: #fff;
	font-size: 20px;
	cursor: pointer;
}

.numbox {
	border: none;
	text-align: center;
	font-size: 20px;
	width: 50px;
	height: 30px;
}
</style>
<script>
	$(document).ready(function() {
		$(".plus").click(function() {
			var target = $(this).data("target");
			var num = $("#" + target).val();
			var plusNum = Number(num) + 1;

			if (plusNum <= 10) {
				$("#" + target).val(plusNum);
			}
		});

		$(".minus").click(function() {
		    var target = $(this).data("target");
		    var num = $("#" + target).val();
		    var minusNum = Number(num) - 1;

			if (minusNum >= 0) {
				$("#" + target).val(minusNum);
			}
		});
	});
</script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container">
		<div class="product">
			<img src="${data.promotion_img}" alt="Product Image">
			<div>
				<div class="name">${data.promotion_name}</div>
				<div class="description">${data.promotion_content}</div>
			</div>
		</div>
		<table>
			<thead>
				<tr>
					<th>행사명</th>
					<th>상품명</th>
					<th>가격</th>
					<th>수량</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td>${data.promotion_name }</td>
					<td>디즈니 성인 종일권</td>
					<td>${data.ticket_adult_free *0.7}</td>
					<td>
						<button type="button" class="minus" data-target="adult-free">-</button> <input
						type="number" id="adult-free" class="numbox" min="0" max="10" value="0" readonly="readonly">
						<button type="button" class="plus" data-target="adult-free">+</button>
					</td>
				</tr>
				<tr>
					<td>${data.promotion_name }</td>
					<td>디즈니 성인 오후권</td>
					<td>${data.ticket_adult_afternoon *0.7}</td>
					<td>
						<button type="button" class="minus" data-target="adult-afternoon">-</button> <input
						type="number" id="adult-afternoon" class="numbox" min="0" max="10" value="0" readonly="readonly">
						<button type="button" class="plus" data-target="adult-afternoon">+</button>
					</td>
				</tr>
				<tr>
					<td>${data.promotion_name }</td>
					<td>디즈니 청소년 종일권</td>
					<td>${data.ticket_student_free *0.7}</td>
					<td>
						<button type="button" class="minus" data-target="student_free">-</button> <input
						type="number" id="student_free" class="numbox" min="0" max="10" value="0" readonly="readonly">
						<button type="button" class="plus" data-target="student_free">+</button>
					</td>
				</tr>
				<tr>
					<td>${data.promotion_name }</td>
					<td>디즈니 청소년 오후권</td>
					<td>${data.ticket_student_afternoon *0.7}</td>
					<td>
						<button type="button" class="minus" data-target="student_afternoon">-</button> <input
						type="number" id="student_afternoon" class="numbox" min="0" max="10" value="0" readonly="readonly">
						<button type="button" class="plus" data-target="student_afternoon">+</button>
					</td>
				</tr>
				<tr>
					<td>${data.promotion_name }</td>
					<td>디즈니 아동/유아 종일권</td>
					<td>${data.ticket_kids_free *0.7}</td>
					<td>
						<button type="button" class="minus" data-target="kids_free">-</button> <input
						type="number" id="kids_free" class="numbox" min="0" max="10" value="0" readonly="readonly">
						<button type="button" class="plus" data-target="kids_free">+</button>
					</td>
				</tr>
				<tr>
					<td>${data.promotion_name }</td>
					<td>디즈니 아동/유아 오후권</td>
					<td>${data.ticket_kids_afternoon *0.7}</td>
					<td>
						<button type="button" class="minus" data-target="kids_afternoon">-</button> <input
						type="number" id="kids_afternoon" class="numbox" min="0" max="10" value="0" readonly="readonly">
						<button type="button" class="plus" data-target="kids_afternoon">+</button>
					</td>
				</tr>
			</tbody>
		</table>

		<form action="/index" method="get">
			<input type="text" name="buyerName" placeholder="Name"
				padding="200px"><br> <input type="tel"
				name="mobileNumber" placeholder="Phone Number"><br> <input
				type="email" name="email" placeholder="Email"><br>
			<button type="submit">Checkout</button>
		</form>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>
