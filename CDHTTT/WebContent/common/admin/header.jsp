<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manager User</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href='<c:url value="resources/DataTables/css/bootstrap.css" />'>
<link rel="stylesheet"
	href='<c:url value="resources/DataTables/css/dataTables.bootstrap.css" />'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<base href="${pageContext.servletContext.contextPath}/">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<style type="text/css">
.menu th {
	padding-left: 12px;
	padding-right: 12px;
	padding-bottom: 5px;
	padding-top: 5px;
}

.menu img {
	height: 45px;
	width: 45px;
}

.titlecenter input[type=text] {
	width: 300px;
	border-radius: 10px;
	border: 1px solid black;
	padding-left: 10px;
}

.titleleft a {
	color: black;
}

.titleleft a:HOVER {
	color: blue;
}

.titleleft th {
	width: 20%;
	padding-left: 15px;
	padding-right: 15px;
}

.title {
	padding-top: 30px;
	padding-bottom: 30px;
	border: 1px solid lightgray;
	margin-bottom: 30px;
	background: #EFFBFB;
}

button {
	background: white;
	border-radius: 5px;
	border: 1px solid black;
	padding: 2px 2px 2px 2px;
}
.usertable th, td {
	padding-top: 20px;
	padding-bottom: 20px;
	padding-left: 25px;
}

.user {
	border: 1px solid black;
	border-radius: 5px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<table class="menu">
					<tr>
						<th><img alt="" src="matcuoi.jpg"></th>
						<th>Trang chủ</th>
						<th>Quản lý</th>
						<th>Thống kê</th>
					</tr>
				</table>
			</div>
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<table class="menu">
					<tr>
						<th>Đổ Thanh Duy <i class='fas fa-user-tie'
							style='font-size: 20px'> <i class='fas fa-angle-down'
								style='font-size: 20px'></i></i></th>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="title">
		<div class="container">
			<div class="row">
				<div class="col-sm-8">
					<table class="titleleft">
						<tr>
							<th><a href="admin/post">Quản lý bài viết</a></th>
							<th><a href="admin/user">Quản lý tài khoản</a></th>
							<th><a href="admin/comment">Quản lý bình luận</a></th>
							<th><a href="admin/rate">Quản lý đánh giá</a></th>
						</tr>
					</table>
				</div>
				<div class="col-sm-4">
					<table class="titleleft">
						<tr>
							<c:if test="${page=='post'}">
								<th><a href="admin/addpost"><button
											style="padding-top: 2px; padding-bottom: 2px; font-weight: bold;">
											<i class="fa fa-plus-circle"
												style="font-size: 20px; color: blue"></i> Thêm
										</button></a></th>
							</c:if>
							<c:if test="${page=='user'}">
								<th><a href="admin/adduser"><button
											style="padding-top: 2px; padding-bottom: 2px; font-weight: bold;">
											<i class="fa fa-plus-circle"
												style="font-size: 20px; color: blue"></i> Thêm
										</button></a></th>
							</c:if>
							
							<th><button>
									<i class="fa fa-print" style="font-size: 20px;"></i> Export
									Data
								</button></th>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>