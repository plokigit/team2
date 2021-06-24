<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>HOCANCE</title>
<meta charset="UTF-8">
<style>
.wrap {
width:1000px;
text-align: center;
margin:0 50px;
}
a{
text-decoration: none;
}
button {
	background-color: white;
	padding: 5px 10px;
}
header{
	/* background-color: red; */
}
.clear{
	content: "";
  	clear: both;
  	display: table;
}
nav{
	/* background-color: lightblue; */
	height:200px;
	overflow:hidden;
}
nav .main_image {
	width:700px;
	float:left;
}
nav .date_choice {
	margin-top: 50px;
}
section{
	/* background-color: yellow; */
	height: 200px;
}
section .room_choice {
	height: 200px;
	width: 1000px;
	border: 2px solid black;
	font-size: 120%;
}
section .room_image {
	height: 200px;
	width: 350px;
	overflow: hidden;
	float: left;
}
section .room_info {
	height: 150px;
	width: 500px;
	text-align: left;
	margin-top: -5px;
	margin-left: 370px;
	
}
section .price {
	float: left;
	margin-left: 410px;
	font-size: 120%;
}
select, input{
	padding: 10px;
}
</style>
</head>
<body>
<div class="wrap">
		<header>
		<%@include file="top.jsp" %>
		</header>
		<div class="clear"></div>
		<nav>
			<div class="main_image">
  				<img src="../upload/pic_trulli.jpg" style="min-width: 100%; min-height: 100%;">
			</div>
			<div class="date_choice">
				<p>체크인 <input type="date" style="width:150px;"></p>
				<p>체크아웃 <input type="date" style="width:150px;"></p>
			</div>
		</nav>
		<br>
		<section>
			<div class="room_choice">
				<div class="room_image">
					<img src="../upload/pic_trulli.jpg" style="min-width: 100%; min-height: 100%;">
				</div>
				<div class="room_info">
					<p>주니어 스위트 룸</p>
					<hr>
					<pre>
침대타입 더블/트윈/트리플
투숙인원 2-4명
전망 시티뷰
객실면적 53.6~61.5 m²
체크인/체크아웃 15:00/12:00
</pre>
				</div>
				<div class="price">299,000원</div>
				<div class="rev_btn"><button>예약하기</button></div>
			</div>
		</section>
<div class="clear"></div>

		<footer>
			<%@include file="footer.jsp" %>
		</footer>

</div>
</body>
</html>