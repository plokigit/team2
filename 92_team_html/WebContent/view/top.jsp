<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<style type="text/css">
.header_div {
width: 1000px; 
display: inline-block; 
position: relative; 
margin-left: 100px;
}
button {
	width: 100px;
	height: 40px;
	float: right;
	margin-right: 30px;
}
.logo {
  position: absolute;
  top: 50%;
  width: 100%;
  text-align: center;
}
</style>
</head>
<body>
		<header>
			<div class="header_div">
				<div style="text-align: center; margin:0px auto;">
				<div class="logo">
  				<img src="../upload/team_logo.png" alt="HOCANCE" width="300px">
				</div>
				<div>
					<button>Reservation Guide</button>
					<button>로그인</button>
				</div>
				</div>
			</div>
		</header>
</body>
</html>
