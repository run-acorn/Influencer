<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>로그인</title>

</head>
<body class="login">

			<h2>로그인</h2>
			
			<!-- 로그인 form -->
			<form action="${cpath}/login.do" method="post">
				<ul class="features">
					<li>
					<span class="id"></span>
					<input type="text" id="id" name="id" placeholder="ID을 입력하세요"> 
					<input type="password" id="pw" name="pw" placeholder="PW를 입력하세요">
					<input type="submit" value="로그인" class="button fit" >
					</li>
				</ul>
			</form>

	</div>

	
</body>
</html>