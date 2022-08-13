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
            <td><a href="${cpath}/selectimage.do?bag_no=${vo.bag_no}">${vo.bag_no}</a></td>
            <td>${vo.bag_name}</td>
            <td>${vo.bag_brand}</td>
            <td>${vo.bag_type}</td>
            </tr>
            </c:forEach>
</table>

<tr> 
<td>
<form id="send_img" method="post" enctype="multipart/form-data">
<input type="file" name="file" id="file"></td>
<button type="button" id="send_img_btn">업로드</button>
</form>

</tr>



<script type="text/javascript">
$(function(){
	
	$('#send_img_btn').on('click',function(){
		send_img_ajax();
	});
});

function send_img_ajax(){
	let form = $('#send_img')[0];
	let formData = new FormData(form);
	
	$.ajax({
		url : 'http://172.30.1.42:3500',
		type : 'POST',
		contentType : false,
		processData : false,
		async : false,
		data : formData,
		success : answer_bag_name,
		error : function(){
			alert('이미지 검색 불가 다른사진을 넣어주세요');
		}
	})
	
}

function answer_bag_name(res){
	console.log('flask에서 넘어오는 값',res);
	$.ajax({
		url : '${cpath}/search_answer.do',
		type : 'POST',
		data : {"bag_name_new":res},
		success : function(bag_no){
			location.href='${cpath}/new_bag_detail.do?bag_no='+bag_no;
		},
		error : function(){
			alert('이미지 서칭실패');
		}
	})
}

//function answer_bag_no(data){
//	console.log(data)
//	$.ajax({
//		url : '${cpath}/bagsearch_detail.do',
//		type : 'POST',
//		data : {"bag_no":data},
//		success : function(bag_no){
			
//		},
//		error : function(){
//			alert('안들어오나')
//		}
//	})
//}

</script>
</body>
</html>