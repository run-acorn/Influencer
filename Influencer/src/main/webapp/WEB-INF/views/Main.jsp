<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="${cpath}/bagSearch.do" method="post">
<input type="text" name="bag_brand">
<button type="submit">검색</button>

</form>

<form action="${cpath}/goboard.do" method="post">
<button type="submit">게시판가기</button>
</form>

<a href="${cpath}/goLogin.do" class="button primary">로그인</a>

<a href="${cpath}/goJoin.do" class="button">회원가입</a>



</body>
</html>