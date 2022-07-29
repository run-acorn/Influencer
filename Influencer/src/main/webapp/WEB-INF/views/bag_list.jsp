<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
<c:forEach var = "vo" items="${list}">
            <tr>
            <td><a href="${cpath}/detail.do">${vo.bag_no}</a></td>
            <td>${vo.bag_name}</td>
            <td>${vo.bag_brand}</td>
            <td>${vo.bag_type}</td>
            </tr>
            </c:forEach>
</table>

<tr> 
<td>
<form action="${cpath}/upload.do" method="post" enctype="multipart/form-data">
<input type="file" name="file"></td>
<button type="submit">업로드</button>
</form>

</tr>



</body>
</html>