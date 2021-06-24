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
header{
	/* background-color: red; */
}
.clear{
	content: "";
  	clear: both;
  	display: table;
}
nav{
	background-color: lightblue;
	height:350px;
	overflow:hidden;
}
section{
	/* background-color: yellow; */
	height:200px;
}
fieldset{
	border: 2px solid black;
}
legend{
	font-weight: bold;
	font-size: 150%;
}
select, input{
	padding: 10px;
}
article{
	/* background-color: lightgreen; */
	height: 180px;
	text-align: left;
	padding: 20px 200px;
}
article .notice{
	border: 2px solid black;
	padding: 10px 20px;
}
article .notice_title{
	width:500px;
}
footer{
}
</style>
</head>
<body>
<div class="wrap">
			<%@include file="top.jsp" %>
		<nav>
			<div class="main_image">
  				<img src="../upload/pic_trulli.jpg" style="min-width: 100%; min-height: 100%;">
			</div>
		</nav>
		<br>
		<section>
			<fieldset>
			<legend style="margin-left:-300px;">검색</legend>
			<br>
			지역 <select style="width:150px; margin-right:100px;"><option>서울</option></select>
			인원수 성인: <input type="number" style="width:50px;">
			어린이: <input type="number" style="width:50px;">
			<br><br><br>
			체크인 <input type="date" style="width:150px; margin-right:120px;">
			체크아웃 <input type="date" style="width:150px;">
			<br><br>
			</fieldset>
		</section>

		<article>
			<h2>공지사항/이벤트</h2>
			<div class="notice">
				<table>
					<tr><td class="notice_title">공지사항</td><td>2021.02.22.</td></tr>
					<tr><td class="notice_title">공지사항</td><td>2021.02.22.</td></tr>
					<tr><td class="notice_title">공지사항</td><td>2021.02.22.</td></tr>
				</table>
			</div>
		</article>

			<%@include file="footer.jsp" %>

</div>
</body>
</html>