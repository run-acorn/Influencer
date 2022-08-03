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
									<th>머리글</th>
									<th>글 내용</th>
									<th>작성자</th>
									<th>total</th>
									<th>&nbsp;</th>
								</tr>
							</thead>
							<tbody>
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
							loadList();
						})
						
						
						function loadList(){
							$.ajax({
								url : '${cpath}/boardList.do',
								type : 'get',
								dataType : 'json',
								success : listView,
								error : function(){
									alert('실패');
								}
							})
						}
						
						function listView(data){
							var blist = "";
							
							$.each(data, function(index, board){
								blist += "<tr class='innerContent'>"
								blist += "<td class='table-light' style='padding-left:40px;'>" + board.board_no + "</td>"
								blist += "<td class='table-light' style='padding-left:30px;'>" + board.board_head + "</td>"
								blist += "<td class='table-light' style='padding-left:25px;'><a href='${cpath}/boardView.do?board_no="+board.board_no+"'>" + board.board_content + "</a></td>"
								blist += "<td class='table-light' style='padding-left:25px;'>" + board.nick + "</td>"
								blist += "</tr>"
							})
							$('.heading').after(blist);
						}
						
						
						
						
						
						
						</script>
						

							</tbody>

						</table>
						<div class="col-lg-6 col-sm-12" style="text-align: center;">
							<button class="btn btn-success float-right">
								<a href="${cpath}/goboardinsert.do">게시판 글쓰기</a>
							</button>
						</div>
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

