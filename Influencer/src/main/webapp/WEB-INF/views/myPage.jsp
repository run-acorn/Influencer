<%@page import="kr.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<!-- bootstrap 사용하기 위해 필요한 라이브러리 3개! -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>My Page</title>
</head>
<body>

	<div id="wrapper" align="center" style="width:20em">
	
		<div id="main">
		
				<header class="major">
					<h2>내 정보</h2>
				</header>
			
					<div class="spotlight">
							<ul style="list-style: none !important;">
								<li style="padding-bottom:0.5em">
									<a href="${cpath}/goMyWrtie.do" style="border-bottom: none">내가 쓴 글</a>
								</li>
								<li style="padding-bottom:0.5em">
									<a href="${cpath}/goChangePw.do" style="border-bottom: none">비밀번호 변경</a>
								</li>
								<li style="padding-bottom:0.5em">
									<a href="${cpath}/goChangeNick.do" style="border-bottom: none">닉네임 변경</a>
								</li>
								<li style="padding-bottom:0.5em">
									<a href="${cpath}/goDeleteMember.do" style="border-bottom: none">회원탈퇴</a>
								</li>
								<li style="padding-bottom:0.5em">
									<a href="${cpath}/" style="border-bottom: none">메인으로</a>
								</li>
							</ul>
					</div>
			
		</div>

	</div>
</body>
</html>