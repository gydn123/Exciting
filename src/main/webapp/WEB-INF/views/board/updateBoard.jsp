<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<style type="text/css">

#create-board .create-window,#form,.container {
	/*   padding-right: 124px; */
	
	width: 1100px;
	margin:0 200px 0 100px;
}

#exampleFormControlTextarea1 {
	width: 1100px;
	height: 300px;
	resize:none;
}
#select-wrap{
	width:40px;
}
#b_type,#option{
	width:200px;
	height:40px;
	margin-bottom:10px;
	
}
#insert-btn-wrap{
	float:right;
}

#user_profile_img{
	display:none;
}

img{
	width:200px;
}

.btn-blue {
	display: inline-block;
	background: #4aa8d8;
	color: #fff;
	height:40px;

}
	
.btn-blue:hover, .btn-blue:focus {
	display: inline-block;
	background: #298cbf;
	border: 2px solid black;
	color: #fff;
}


.btn {
  display: inline-block;
  padding: 0 30px;
  font-size: 15px;
  font-weight: 400;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 2px solid black;
  text-transform: uppercase;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

input[type=file] {
	display: none;
}

.my_button {
	display: inline-block;
	width: 200px;
	text-align: center;
	padding: 10px;
	background-color: #4aa8d8;
	color: #fff;
	text-decoration: none;
	border-radius: 5px;
}

.my_button:hover,.my_button:focus {
	display: inline-block;
	width: 200px;
	text-align: center;
	padding: 10px;
	background-color: #298cbf;
	color: #fff;
	text-decoration: none;
	border-radius: 5px;
}

.imgs_wrap {
	border: 2px solid #A8A8A8;
	margin-top: 30px;
	margin-bottom: 30px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.imgs_wrap img {
	max-width: 150px;
	margin-left: 10px;
	margin-right: 10px;
}

.image_wrap {
	border: 2px solid #A8A8A8;
	margin-top: 30px;
	margin-bottom: 30px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.image_wrap img {
	max-width: 150px;
	margin-left: 10px;
	margin-right: 10px;
}


</style>
<script type="text/javascript">

$(document).ready(function(){
	 
	 $("#input_imgs").on("change", handleImgFileSelect);
	 
	 BoardImg();
	 
});

	//기존이미지
	function BoardImg(){
		$.ajax({
			 type:'post',
			 url:'/board/boardImgShow',
			 datatype:'json',
			 data:{
				 'board_id':'${boardView.board_id}'
			 },success: function(data){
				 console.log(data);
				 tr='';
				 for(row of data){
					 tr+="<a href=\"#\" onclick=\"deleteBoardImg("+row.boardImg_num+")\" id=\"img_id_"+row.board_id+"\"><img src=\"" + row.boardImg + "\"class='selProductFile' title='Click to remove'></a>";
				 }
				 
				 $('.image_wrap').html(tr);
			 }
			 
		 })
	}


	//기존 이미지 삭제
	function deleteBoardImg(boardImg_num){
		if(confirm("사진을 삭제하시겠습니까?")){
			$.ajax({
				 type:'post',
				 url:'/board/deleteBoardImg',
				 datatype:'json',
				 data:{
					 'boardImg_num' : boardImg_num
				 },success: function(data){
					 BoardImg();
				 }
				 
			 })
		}
	
	 
}

//수정 취소
	function cancle(){
		if(confirm("글 작성을 취소하시겠습니까?")){
			location.href="/board/view?board_id=${boardView.board_id}";
		}
	}

//수정 확정
	function update(){
		var form = document.getElementById('#form');
		
		if($('#b_title').val().length === 0){
			alert("제목을 입력해주세요");
			return false;
		}else if($('#b_content').val().length === 0){
			alert("내용을 입력해주세요");
			return false;
		}if($('select[name="b_type"]').val()=='0'){
			alert("말머리를 입력해주세요");
			return false;
		}else{
			form.action('/board/updateBoard');
			form.method = 'post';
			form.submit();
		}
	}

// 이미지 미리보기
	
 
 
	function fileUploadAction() {
            console.log("fileUploadAction");
            $("#input_imgs").trigger('click');
        }

        function handleImgFileSelect(e) {

            // 이미지 정보들을 초기화
            sel_files = [];
            $(".imgs_wrap").empty();

            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);

            var index = 0;
            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")) {
                    alert("확장자는 이미지 확장자만 가능합니다.");
                    return;
                }

                sel_files.push(f);

                var reader = new FileReader();
                reader.onload = function(e) {
                    var html = "<a href=\"#\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
                    $(".imgs_wrap").append(html);
                    index++;

                }
                reader.readAsDataURL(f);
                
            });
        }
        
        function deleteImageAction(index) {
            console.log("index : "+index);
            console.log("sel length : "+sel_files.length);

            sel_files.splice(index, 1);

            var img_id = "#img_id_"+index;
            $(img_id).remove(); 
        }

        function fileUploadAction() {
            console.log("fileUploadAction");
            $("#input_imgs").trigger('click');
        }

 
</script>
</head>
<body>
	<!-- create view area -->
	<div class="wrap">
	<jsp:include page="/WEB-INF/views/board/advertisement_leftSide.jsp"/>
		<div id="create-board">
			<div class="container">
				<div class="create-window">
					<form action="/board/updateBoard" method="post" enctype="multipart/form-data">
						<div id='top-wrap' >
						<!-- 작성할 게시판 선택 -->
						<div class="form-floating mb-3">
							<input type="text" class="form-control" name="b_title" id="floatingInput" value="${boardView.b_title}">
							<label for="floatingInput">제목</label>
						</div>
						<!-- 버튼 -->
						</div>
							<!-- top end -->
							<hr>
							<textarea class="form-control" name="b_content" id="exampleFormControlTextarea1" rows="3" >${boardView.b_content}</textarea>
							<div id="insert-btn-wrap">
								<input type="button" id="cancle-btn" class="btn btn-blue" onclick="cancle()"value="취소">
								<input type="submit" class="btn btn-blue" id="submit" value="확인">
							</div>
							<input type="hidden" name="board_id" value="${boardView.board_id }">
					
							<br>
							<div id="boardImgOrigin">
								<h2>본문 이미지</h2>
								<div class="image_wrap">
								
								</div>
							
							<div>
						        <h2><b>이미지 미리보기</b></h2>
						        <div class="input_wrap">
						            <button type="button" onclick="fileUploadAction();" class="my_button">파일 업로드</button>
						            <input type="file" name="file" id="input_imgs" multiple="multiple"/>
						        </div>
						    </div>
						
						    <div>
						        <div class="imgs_wrap">
						            <img id="img" />
						        </div>
						    </div>
						</div>
					</form>	
				</div>
			</div>
		</div>
	</div>
</body>
</html>