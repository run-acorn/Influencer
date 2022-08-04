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
<title>Insert title here</title>
</head>
<body>

	<c:if test="${!empty mvo}">
		<label>${mvo.nick}님 환영합니다!</label>
		<a href="${cpath}/goMyPage.do" class="btn btn-primary btn-sm">내 정보</a>
		<a href="${cpath}/logout.do" class="btn btn-danger btn-sm">로그아웃</a>
	</c:if>
	
	<form action="${cpath}/bagSearch.do" method="post">
		<input type="text" name="bag_brand">
		<button type="submit">검색</button>
	</form>
		
	<form action="${cpath}/goboard.do" method="post">
		<button type="submit">게시판가기</button>
	</form>
	
	<c:if test="${empty mvo}">
		<a href="${cpath}/goLogin.do" class="btn btn-primary btn-sm">로그인</a>
	
		<a href="${cpath}/goJoin.do" class="btn btn-primary btn-sm">회원가입</a> 
	</c:if>
	
</body>
</html>