<%@page import="kr.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Table 06</title>
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-4">
					<h2 class="heading-section">인플루언서 커뮤니티</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h3 class="h5 mb-4 text-center">게시판</h3>
					<div class="table-wrap">
						<table class="table">
							<thead class="thead-primary">
								<tr class="heading">
									<th>번호</th>
									<th>제목</th>
									<th>글 내용</th>
									<th>머리글</th>
									<th>작성자</th>
									<th>작성시간</th>
								</tr>
							</thead>
							<tbody id="boardBody">
							<tr class="alert" role="alert">
									<td><label class="checkbox-wrap checkbox-primary">
											<input type="checkbox" checked> <span
											class="checkmark"></span>
									</label></td>
									 <td>$89.98</td>	
									<td>
										<div class="email">
											<span>Sneakers Shoes 2020 For Men </span> <span>Fugiat
												voluptates quasi nemo, ipsa perferendis</span>
										</div>
									</td>
									<td>$44.99</td>
								
									<td>
										<div class="img"
											style="background-image: url(resources/images/product-1.png);"></div>
									</td>
									<td>
										<button type="button" class="close" data-dismiss="alert"
											aria-label="Close">
											<span aria-hidden="true"><i class="fa fa-close"></i></span>
										</button>
									</td>
								</tr>
							
 			<script type="text/javascript">
						
						$(document).ready(function(){
							loadList(1);
						})
						
						
						function loadList(pageNum){
							$.ajax({
								url : '${cpath}/getListPaging.do',
								type : 'get',
								data : {'pageNum' : pageNum},
								dataType : 'json',
								success : listView,
								error : function(){
									alert('실패');
								}
							})
						}
						
						function listView(data){
							var blist = "";
							
							
							$('#boardBody').html("")
							
							$.each(data.list, function(index, board){
								blist += "<tr class='innerContent'>"
								blist += "<td class='table-light' style='padding-left:40px;'>" + board.board_no + "</td>"
								blist += "<td class='table-light' style='padding-left:25px;'>" + board.board_title + "</td>"
								blist += "<td class='table-light' style='padding-left:25px;'><a href='${cpath}/boardView.do?board_no="+board.board_no+"'>" + board.board_content + "</a></td>"
								blist += "<td class='table-light' style='padding-left:30px;'>" + board.board_head + "</td>"
								blist += "<td class='table-light' style='padding-left:25px;'>" + board.nick + "</td>"
								blist += "<td class='table-light' style='padding-left:25px;'>" + board.board_date + "</td>"
								blist += "</tr>"
							})
							
							
							blist += "<tr><td colspan=6 align='center'>"
								if(data.pageMake.prev){
									blist += "<a href='javascript:loadList("+(data.pageMake.startPage-1)+")'>"
									blist += "이전 "
									blist += "</a>"
								}
							
								for(var i=data.pageMake.startPage; i<=data.pageMake.endPage; i++){
									blist += "<a href='javascript:loadList("+(i)+")'>"
									blist += i+" "
									blist += "</a>"
								}
								
								if(data.pageMake.next){
									blist += "<a href='javascript:loadList("+(data.pageMake.endPage+1)+")'>"
									blist += " 다음"
									blist += "</a>"
								}
							blist += "</td></tr>"
							
							$('#boardBody').append(blist);
							
						}
						
						</script>
						
						
							</tbody>

						</table>
						
						<a href="${cpath}/">메인으로</a>
						
						<a href="${cpath}/goboardinsert.do">작성하기</a>
					</div>

				</div>
			</div>
		</div>
	</section>

	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/popper.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/main.js"></script>
	
	

</body>
</html>

