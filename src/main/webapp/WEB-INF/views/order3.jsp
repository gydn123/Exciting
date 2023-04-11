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
</style>
<script type="text/javascript">
	$(document)
			.on('click','.dropdown-item',
					function() {
						var nameValue = $(this).val();
						$
								.ajax({
									type : 'GET',
									url : '/orderlist',
									data : {
										'orderid' : `${data.order_id}`
									},
									dataType : 'json',
									success : function(response) {
										let data = '';
										data += "<tr>";
										data += "<td>"
												+ "<input type='checkbox' name='deletepro' value='"+response['order_id']+"' id='"+response['order_id']+"'>"
												+ response['promotion_name']
												+ "</td>";
										data += "<td width:200px;>"
												+ response['promotion_content']
												+ "</td>";
										if (nameValue === 'ticket_adult_free') {
											data += "<td>"
													+ response['ticket_adult_free']
													+ "</td>";
										} else if (nameValue === 'ticket_adult_afternoon') {
											data += "<td>"
													+ response['ticket_adult_afternoon']
													* 0.7 + "</td>";
										} else if (nameValue === 'ticket_student_free') {
											data += "<td>"
													+ response['ticket_student_free']
													+ "</td>";
										} else if (nameValue === 'ticket_student_afternoon') {
											data += "<td>"
													+ response['ticket_student_afternoon']
													+ "</td>";
										} else if (nameValue === 'ticket_kids_free') {
											data += "<td>"
													+ response['ticket_kids_free']
													+ "</td>";
										} else if (nameValue === 'ticket_kids_afternoon') {
											data += "<td>"
													+ response['ticket_kids_afternoon']
													+ "</td>";
										}
										data += "<td>" + 1 + "</td>";
										data += "<td>"
												+ "<button type='button' class='btn' value='"
												+ response['order_id']
												+ "' id='"
												+ response['order_id']
												+ "' onclick='deleteone(\""
												+ response['order_id']
												+ "\")'>" + "삭제" + "</button>"
												+ "</td>";
										data += "</tr>\n";
										$('tbody').append(data);
										console.log(data);
									}
								});
					});
	function deleteone(order_id) {
		$.ajax({
			type : 'POST',
			url : '/deleteone',
			data : {
				'order_id' : order_id
			},
			contentType : "application/json; charset=utf-8",
			dataType : 'json',
			success : function(response) {
				$('tbody').load('/orderlist');
			}
		});
	}

	function deletepro() {
		let selectedorders = [];

		$("input[type=checkbox][name=deletepro]:checked").each(function() {
			let orderId = $(this).val();
			//let id = $(this).attr('id').substring(3);
			selectedorders.push({
				order_id : orderId
			});
		});

		if (selectedorders.length === 0) {
			alert("1개 이상 체크해주세요.");
		} else {
			if (confirm("삭제하는것이 확실합니까?")) {
				$.ajax({
					type : 'POST',
					url : '/delete',
					data : JSON.stringify(selectedorders),
					contentType : "application/json; charset=utf-8",
					dataType : 'json',
					success : function(response) {
						// selectedorders.forEach(function(order) {
						// Remove the HTML element corresponding to the deleted order
						//    $('#' + data.order_id).remove();
						//  });
						// Reload the UI after deleting the selected orders
						$('tbody').load('/orderlist');
					}
				});
			}
		}
	}
	/*$(document).ready(function(){
	 orderlist();
	 })
	 $(function () {
	 orderlist();
	 });*/
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
			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">티켓</button>
				<ul class="dropdown-menu">
					<li><button class="dropdown-item" type="button"
							value="ticket_adult_free">성인 종일권</button></li>
					<li><button class="dropdown-item" type="button"
							value="ticket_adult_afternoon">성인 오후권</button></li>
					<li><button class="dropdown-item" type="button"
							value="ticket_student_free">청소년 종일권</button></li>
					<li><button class="dropdown-item" type="button"
							value="ticket_student_afternoon">청소년 오후권</button></li>
					<li><button class="dropdown-item" type="button"
							value="ticket_kids_free">아동 종일권</button></li>
					<li><button class="dropdown-item" type="button"
							value="ticket_kids_afternoon">아동 오후권</button></li>
				</ul>
			</div>
		</div>
		<table>
			<thead>
				<tr>
					<th>행사명</th>
					<th>행사내용</th>
					<th>가격</th>
					<th>수량</th>
				</tr>
			</thead>

			<tbody>

			</tbody>
		</table>
		<button type="button" onclick="deletepro()">delete</button>

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
