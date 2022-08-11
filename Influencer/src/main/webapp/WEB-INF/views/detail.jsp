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

<a onclick="location.href='${cpath}/new_bag_detail.do?bag_no="+list.bag_no+"'">새상품</a>


<a onclick="location.href='${cpath}/used_bag_detail.do'">중고상품</a>


<!-- by지민, Blob형태로 DB에 저장된 이미지를 화면에 출력 -->
<img src="${cpath}/getByteImage.do?bag_no=${bag_no}"/>


<c:forEach var = "vo" items="${list}">
            <tr>
            <td>${vo.new_mall}</td>
            <td>${vo.new_price}</td>
            </tr>
            </c:forEach>

<c:forEach var = "vo" items="${list1}">
            <tr>
            <td>${vo.used_mall}</td>
            <td>${vo.used_price}</td>
            </tr>
            </c:forEach>

</table>

</body>
</html>