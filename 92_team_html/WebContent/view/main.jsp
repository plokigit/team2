<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>HOCANCE</title>
<meta charset="UTF-8">
<style>
#wrap {
width:1000px;
text-align: center;
margin:0 50px;
}
a{
text-decoration: none;
}
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
	margin-right: 10px;
}
.logo {
  position: absolute;
  top: 50%;
  width: 80%;
  text-align: center;
}
header{
	/* background-color: red; */
	height:120px;
}
#clear{
	content: "";
  	clear: both;
  	display: table;
}
nav{
	background-color: lightblue;
	height:350px;
}
section{
	/* background-color: yellow; */
	height:200px;
}
article{
	/* background-color: lightgreen; */
	height:180px;
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
	background-color: skyblue;
	height:120px;
}
</style>
</head>
<body>
<div id="wrap">
		<header>
			<div class="header_div">
				<div style="text-align: center; margin:0px auto;">
				<div class="logo">
  				<img src="../upload/team_logo.png" alt="HOCANCE" width="300px">
				</div>
				<div style="margin-right: 120px;">
					<button>Reservation Guide</button>
					<button>로그인</button>
				</div>
				</div>
			</div>
		</header>
		<div id="clear"></div>
		<nav>
			<div class="main_image">
  				<img src="../upload/pic_trulli.jpg" height="350px">
			</div>
		</nav>
		<br>
		<section>
			<fieldset>
			<legend style="margin-left:-300px;">검색</legend>
			<br>
			지역 <select style="width:150px;"><option>서울</option></select>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			인원수 성인: <input type="number" style="width:50px;">
			어린이: <input type="number" style="width:50px;">
			<br><br><br><br>
			체크인 <input type="date" style="width:150px;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			체크아웃 <input type="date" style="width:150px;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<br><br>
			</fieldset>
		</section>

		<article>
			<h2>공지사항/이벤트</h2>
			<div class="notice">
				<table>
					<tr><td class="notice_title">공지사항</td><td>2021.02.22</td></tr>
					<tr><td class="notice_title">공지사항</td><td>2021.02.22</td></tr>
					<tr><td class="notice_title">공지사항</td><td>2021.02.22</td></tr>
				</table>
			</div>
		</article>

		<footer>
		<br>
		<pre>
(주)호캉스 |대표이사 : 김이박 | 사업자 등록번호 : 222-22-22222 | 통신판매업신고 : 강북-22222호 | 메일 : help@hocance.com
관광사업자 등록번호 : 제2022-22호 | 주소 : 서울 마포구 어딘가로 222길 22 | 호스팅서비스 제공자 : 주식회사 호캉스
고객센터 : 1622-2222 (오전 9시 - 익일 새벽 3시)
		</pre>
		</footer>

<div style="width:50px;height:50px;position:fixed;right:20px;bottom:20px;font-size:300%;"><a href="#">↑</a></div>
</div>
</body>
</html>
