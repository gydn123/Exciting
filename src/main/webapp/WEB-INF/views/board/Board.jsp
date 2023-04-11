<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"
	integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
	crossorigin="anonymous"></script>
<link href="<c:url value="/resources/css/board.css" />" rel="stylesheet" />
<style type="text/css">

ul.tabs{
	float:left;
	list-style: none;
}

ul.tabs li{
	display: inline-block;
	padding: 10px 15px;
	cursor: pointer;
	
	
}



ul.tabs li a{
	color:#666666;
	text-decoration: none;
}

.btn-search{
	background:#555;
	color:#fff;
	hight:40px;
}

#boardList td a{
	text-decoration: none;
	color:black;
}

</style>
<script type="text/javascript">
	
$(document).ready(function(){
	
$('ul.tabs li').click(function(){

	$('ul.tabs li').removeClass('current');

		$(this).addClass('current');
		
		    
	})

	
	$(function(){
		var form = document.getElementById("#write_form");
		$('#write-top').on('click',function(){
			if(${member_id ne null}){
				location.href="/board/createBoard";
			}else{
				alert('로그인 해주세요!');
			}
		});
		
		$('#write-bottom').on('click',function(){
			if(${member_id ne null}){
				location.href="/board/createBoard";
			}else{
				alert('로그인 해주세요!');
			}
		});
	});
	
	if(${param.b_type eq 1}){
		$('#li-1').css({"border-width":"1px 1px 0 1px","border-style":"solid","background":"#ededed","border-color":"#999999","font-weight":"bold","border-radius":"5px 5px 0 0"});
	}else if(${param.b_type eq 2}){
		$('#li-2').css({"border-width":"1px 1px 0 1px","border-style":"solid","background":"#ededed","border-color":"#999999","font-weight":"bold","border-radius":"5px 5px 0 0"});
	}else if(${param.b_type eq 3}){
		$('#li-3').css({"border-width":"1px 1px 0 1px","border-style":"solid","background":"#ededed","border-color":"#999999","font-weight":"bold","border-radius":"5px 5px 0 0"});
	}else if(${param.b_type eq 4}){
		$('#li-4').css({"border-width":"1px 1px 0 1px","border-style":"solid","background":"#ededed","border-color":"#999999","font-weight":"bold","border-radius":"5px 5px 0 0"});
	}else{
		$('#li-0').css({"border-width":"1px 1px 0 1px","border-style":"solid","background":"#ededed","border-color":"#999999","font-weight":"bold","border-radius":"5px 5px 0 0"});
	}
	
	
	
	boardList();
		
});
	
	
	function boardList(){
		var select=$('select[name=select]').val();
		var search=$('input[name=search]').val();
		$.ajax({
			type:'get',
			url:'/board/boardList',
			datatype:'json',
			data:{
				'select' : $('select[name=select]').val(),
				'search' : $('input[name=search]').val(),
				'start' : '${startend.start}',
				'end' : '${startend.end}',
				'b_type' : '${param.b_type}'
			},success : function(data){
				console.log(data);
				tr="";
				for(row of data){
					tr+="<tr>";
					tr+="<td>"+row.board_id+"</td>";
					tr+="<td>"+row.b_type+"</td>";
					tr+="<td style='text-align:left;padding:0 0 0 10px'><a href='/board/view?board_id="+row.board_id+"'>"+row.b_title+"</a></td>";
					tr+="<td>"+row.member_id+"</td>";
					tr+="<td>"+row.postdate+"</td>";
					tr+="<td>"+row.visitcount+"</td>";
					tr+="</tr>";
				}
				if(data.length !=0){
					boardPaging(data[0]["cnt"],select,search)
				}else{
					boardPaging(0,select,search)
				}
				$('#boardList').html(tr);
			}
			
		});
	} 
	
	function boardPaging(cnt,select,search){
		$.ajax({
			type:'get',
			url:'/board/boardPaging',
			data:{
				'select' : select,
				'search' : search,
				'cnt' : cnt,
				'start' : '${startend.start}',
				'b_type' : '${param.b_type}'
			},success : function(data){
				console.log(data);
				
				tr="["+data+"]";
				
				$('.page_nation').html(tr);
			}
		
		});
	} 
	
	
</script>
</head>
<body>
<jsp:include page="/WEB-INF/views/menu.jsp"/>
	<section class="notice">
		<div class="page-title" style="text-align:center">
		<h1>게시판</h1>
		</div>
			<div class="write_form_wrap">
				<div>
					<ul class="tabs">
						<li class="tab-link current" id="li-0"><a href="/board/board?b_type=0">전체</a></li>
						<li class="tab-link" id="li-1"><a href="/board/board?b_type=1">국내</a></li>
						<li class="tab-link" id="li-2"><a href="/board/board?b_type=2">해외</a></li>
						<li class="tab-link" id="li-3"><a href="/board/board?b_type=3">질문</a></li>
						<li class="tab-link" id="li-4"><a href="/board/board?b_type=4">잡담</a></li>
					</ul>
				</div>
				<div class="write_form">
					<button type="submit" id="write-top" class="btn-board-top" ><img src="https://cdn-icons-png.flaticon.com/512/5218/5218705.png" style="width:15px; top:5px">글쓰기</button>
				</div>
			</div>
	
		<!-- board list area -->
		<div id="board-list" style="clear:both">
			
			
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" class="th-num" style="width:5%">번호</th>
							<th scope="col" class="th-num" style="width:10%">분류</th>
							<th scope="col" class="th-title"style="width:35%">제목</th>
							<th scope="col" class="th-member"style="width:10%">작성자</th>
							<th scope="col" class="th-date"style="width:35%">등록일</th>
							<th scope="col" class="th-date"style="width:35%">조회수</th>
						</tr>
					</thead>
					<!-- 이부분 나중에 국가별로 나눠야됨  -->
					<!--  
					<c:choose>
						<c:when test="${boardtype eq 'korea'}">
						</c:when>					
						<c:when test="${boardtype eq 'global'}">
						</c:when>					
						<c:when test="${boardtype eq 'free'}">
						</c:when>	
					</c:choose>
					-->				
					<tbody id="boardList">
							
					</tbody>
				</table>
				
				<!-- board paging start-->
				<div class="page_wrap">
					<span class="page_nation"></span>
					<span class="write-bottom-wrap"style="float:right">
						<button type="submit" id="write-bottom" class="btn btn-blue top" style="height: 40px;">글쓰기</button>
					</span>
				</div><!-- board paging end -->
				
			</div>
		</div>
		<div style="clear:both;"></div>
		<!-- board search area -->
		<div id="board-search">
			<div class="container">
				<div class="search-window">
					<div class="search-wrap">

						<select name="select"
							style="width: 20%; height: 40px; float: left; text-align: center; font-size: 14px;">
							<option value="b_title">제목</option>
							<option value="b_content">내용</option>
							<option value="member_id">작성자</option>
						</select> 
						<label for="search" class="blind">공지사항 내용 검색</label> 
						<input id="text" type="search" name="search" value="${param.search }">
						<button type="button"  class="btn btn-search" onclick="boardList()">검색</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>