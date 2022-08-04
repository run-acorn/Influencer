<%@page import="kr.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<title>Table 06</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
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
					<div class="wrapper img" style="background-image: url(images/img.jpg);">
						<div class="row">
							<div class="col-md-9 col-lg-7">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<h3 class="mb-4">상품에 대한 질문, 리뷰를 남겨보세요!</h3>
									<br>
									<br>
									<div id="form-message-warning" class="mb-4"></div> 
				      		<div id="form-message-success" class="mb-4">
				            Your message was sent, thank you!
				      		</div>
				      		
				      		<button type="button" onclick="location.href='${cpath}/returnBoard.do'" class="btn btn-primary">뒤로가기</button>
				      		<br>
				      				<c:forEach var="list" items="${list}">
									<form action="${cpath}/goboardUpdate.do?board_no=${list.board_no}" method="POST" id="boardUpdate" name="boardUpdate" class="contactForm">
										<div class="row">
											<div class="col-md-4"> 
												<div class="form-group">
												<label class="label" for="email">머리글</label>
													<select name="board_head" class="selectpicker" data-style="btn btn-success">
													<option value="">${list.board_head}</option>
													</select>
												</div>
											</div>
											<br>
											<br>
											<div class="col-md-12">
												<div class="form-group">
													<label class="label" for="name">닉네임</label>
													<input type="text" class="form-control" name="nick" id="nick" value="${list.nick}" readonly>
												</div>
											</div>
											<br>
											<br>
											
											<div class="col-md-12">
												<div class="form-group">
													<label class="label" for="name">작성시간</label>
													<span class="form-control">${list.board_date}</span>
												</div>
											</div>
											<br>
											<br>
												<div class="col-md-12">
												<div class="form-group">
													<label class="label" for="subject">이미지 등록</label>
													<input type="text" class="form-control" name="board_img" id="board_img" placeholder="Subject">
												</div>
											</div>
											<br>
											<br>
											<div class="col-md-12">
												<div class="form-group">
													<label class="label" for="#">글 내용</label>
													<label class="label" for="#"></label>
													<span class="form-control">${list.board_content}</span>
												</div>
											</div>
											<br>
											
										<c:if test="${list.nick == mvo.nick}">
											<div class="col-md-12">
												<div class="form-group">
													<input type="submit" value="글 수정" class="btn btn-primary">
													<div class="submitting"></div>
												</div>
											</div>
										</c:if>
										</div>
									</form>
									
									<c:if test="${list.nick == mvo.nick}">
									<div class="col-md-12">
												<div class="form-group">
												<a href="${cpath}/boardDelete.do?board_no=${list.board_no}"><input type="submit" value="글 삭제" class="btn btn-primary"></a>
													<div class="submitting"></div>
												</div>
											</div>
									</c:if>
								
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>
