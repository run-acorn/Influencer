<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
	#result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
	#result_card {
		position: relative;
	}
	.imgDeleteBtn{
	    position: absolute;
	    top: 0;
	    right: 5%;
	    background-color: #ef7d7d;
	    color: wheat;
	    font-weight: 900;
	    width: 30px;
	    height: 30px;
	    border-radius: 50%;
	    line-height: 26px;
	    text-align: center;
	    border: none;
	    display: block;
	    cursor: pointer;	
	}
	
</style>
<title>Table 06</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="resources/insertform/css/style.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>

	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">게시판 글쓰기</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-10">
					<div class="wrapper img"
						style="background-image: url(resources/images/img.jpg);">
						<div class="row">
							<div class="col-md-9 col-lg-7">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<h3 class="mb-4">상품에 대한 질문, 리뷰를 남겨보세요!</h3>
									<div id="form-message-warning" class="mb-4"></div>
									<div id="form-message-success" class="mb-4">Your message
										was sent, thank you!</div>

									<form action="${cpath}/boardinsert.do" method="POST"
										id="boardinsert" name="boardinsert" class="contactForm">
										<div class="row">
											<div class="col-md-4">
												<div class="form-group">
													<label class="label" for="email">머리글</label> <select
														name="board_head" class="selectpicker"
														data-style="btn btn-success">
														<option value="자유">자유</option>
														<option value="질문">질문</option>
														<option value="리뷰">리뷰</option>
													</select>
												</div>
											</div>

											<div class="col-md-12">
												<div class="form-group">
													<label class="label" for="name">제목</label> <input
														type="text" class="form-control" name="board_title"
														id="board_title" placeholder="제목을 입력하세요">
												</div>
											</div>

											<div class="col-md-12">
												<div class="form-group">
													<label class="label" for="name">닉네임</label> <input
														type=text class="form-control" name="nick" id="nick"
														placeholder="Subject" value="${mvo.nick}" readonly>
												</div>
											</div>

											<div class="col-md-12">
												<div class="form-group">
													<label class="label" for="subject">이미지 등록</label> <input
														type="file" class="form-control" name="board_upload_file"
														id="board_upload_file" placeholder="Subject">
													<div id="uploadResult">
													
													</div>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label class="label" for="#">글내용</label>
													<textarea name="board_content" class="form-control"
														id="board_content" cols="30" rows="20"
														placeholder="내용을 입력하세요"></textarea>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<input type="submit" value="글쓰기" class="btn btn-primary">
													<div class="submitting"></div>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script type="text/javascript">
		//by.지민
		$("input[type='file']").on("change", function(e) {
			let fileInput = $("input[name='board_upload_file']");
			let fileList = fileInput[0].files; //FileList 객체에 접근
			let fileObj = fileList[0]; //FileList의 요소 File 객체에 접근
			let formData = new FormData(); //FormData 객체를 사용해 첨부파일 서버로 전송
			formData.append("board_upload_file", fileObj);

			$.ajax({
				url : '${cpath}/board_upload_file.do',
				processData : false, // 서버로 전송 할 데이터를 queryString 형태로 변환할지
				contentType : false, // 서버로 전송되는 데이터의 content-type   
				data : formData,
				type : 'post',
				dataType : 'json',
				success : function(result) {
					console.log(result);
					showUploadImage(result);
				},
				error : function(result) {
					alert("이미지 파일이 아닙니다.");
				}
			});
			
		});
		// 이미지 출력
		function showUploadImage(uploadResultArr){
			// 데이터를 전달 받지 못했을때를 생각한 데이터 검증
			if(!uploadResultArr || uploadResultArr.length == 0){return}
		let uploadResult = $("#uploadResult");
		let fileCallPath = encodeURIComponent(uploadResultArr.board_uploadPath +"/" + uploadResultArr.board_fileName);
		let str = "<div id='result_card'>";
		str += "<img src='${cpath}/img_display?fileName=" + fileCallPath +"'>";
		str += "<div class='imgDeleteBtn'>x</div>";
		str += "</div>";
		
		uploadResult.append(str);
		$('#board_upload_file').after("<input type='hidden' name='board_uploadPath' value='"+uploadResultArr.board_uploadPath+"'>");
		$('#board_upload_file').after("<input type='hidden' name='board_fileName' value='"+uploadResultArr.board_fileName+"'>");
		
		}
		
	</script>

	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/popper.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.validate.min.js"></script>
	<script src="resources/js/main.js"></script>

</body>
</html>
