<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"
	integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
	crossorigin="anonymous"></script>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<style type="text/css">
#create-board{
	margin: 100px 0 ;
}
#create-board .create-window {
	position: relative;
	/*   padding-right: 124px; */
	margin: 0 auto;
	width: 80%;
	max-width: 800px;
}

.container {
	margin: 0 auto;
}

#exampleFormControlTextarea1 {
	width: 100%;
	height: 300px;
	resize: none;
}

#select-wrap {
	width: 40px;
}

#b_type, #option {
	width: 20%;
	height: 20px;
	margin-bottom: 10px;
}


#insert-btn-wrap {
	float: right;
	
}

.imgs_file{
	margin:100px 0 0 0;
}


#insert-btn-wrap .btn-blue {
	background: #4aa8d8;
	color: #fff;
	height:35px;
	b
}
	
#insert-btn-wrap .btn-blue:hover, .btn-blue:focus {
	background: #298cbf;
	border-color: #298cbf;
	color: #fff;
	border: 2px solid black;
}

#insert-btn-wrap .btn {
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
	border-radius: 5px;
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
	border: 2px solid black;
}

.my_button:hover, .my_button:focus, .my_button a {
	background-color:#298cbf;
	color: #fff;
}

.imgs_wrap {
	border: 2px solid #d6d6d6;
	margin-top: 30px;
	margin-bottom: 30px;
	padding-top: 10px;
	padding-bottom: 10px;
	border-radius: 5px;
}

.imgs_wrap img {
	max-width: 150px;
	margin-left: 10px;
	margin-right: 10px;
}

</style>
<script type="text/javascript">

$(document).ready(function(){
	
	 $("#input_imgs").on("change", handleImgFileSelect);
})
	function cancle(){
		if(confirm("글 작성을 취소하시겠습니까?")){
			location.href="/board/board";
		}
	}
	
	function insert(){
		var form = document.getElementById('form');
		
		if($('input[name="b_title"]').val().length === 0){
			alert("제목을 입력해주세요");
			return false;
		}else if($('textarea[name="b_content"]').val().length === 0){
			alert("내용을 입력해주세요");
			return false;
		}if($('select[name="b_type"]').val()=='0'){
			alert("말머리를 선택해주세요");
			return false;
		}else{
			form.submit();
		}
		
	}
	
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
<jsp:include page="/WEB-INF/views/menu.jsp"/>
	<!-- create view area -->
	<div id="create-board">
		<div class="container">
			<div class="create-window">
				<form action="/board/createBoard" id="form" method="post" onsubmit="return insert()" enctype="multipart/form-data">
					<div id='top-wrap'>
						<!-- 작성할 게시판 선택 -->
						<select class="form-select" name="b_type"
							aria-label="Default select example" style="width: 100px">
							<option value='0' id='option'>선택</option>
							<option value='korea' id='option'>국내</option>
							<option value='global' id='option'>해외</option>
							<option value='QnA' id='qna'>질문</option>
							<option value='free' id='option'>자유</option>
						</select><br>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput" name="b_title">
							 <label for="floatingInput">제목</label>
						</div>
					</div>
					<!-- top end -->
					<hr>
					<div class="mb-3">
						<textarea class="form-control" name="b_content"
							id="exampleFormControlTextarea1" rows="3"></textarea>
					</div>
					<div id="insert-btn-wrap">
						<input type="button" id="cancle-btn" class="btn btn-blue" onclick="cancle()" value="취소"> 
							<input type="submit" class="btn btn-blue" id="submit"  value="확인">
					</div>
					<div class="imgs_file">
						<h2><b>이미지 미리보기</b></h2>
						<div class="input_wrap">
						<a href="#" onclick="fileUploadAction();" class="my_button">파일 업로드</a>
						<input type="file" name="file" id="input_imgs" multiple/>
						</div>
					</div>
						
					<div>
						<div class="imgs_wrap">
						    <img id="img" />
						</div>
					</div>
					
					<input type="hidden" name="member_id" value="${member_id}">
					
				</form>
			</div>
		</div>
	</div>
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>