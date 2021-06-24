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
	/* background-color: lightblue; */
	height:50px;
	overflow:hidden;
}
section{
	/* background-color: yellow; */
	text-align: center;
}
section div{
	width: 600px;
	border: 2px solid black;
	margin: 0px auto;
	text-align: left;
	padding-left: 150px;
}
select, input{
	padding: 10px;
}
</style>
</head>
<body>
<div class="wrap">
			<%@include file="top.jsp" %>
		<nav>
			<div>
  				<font style="font-weight: bold; font-size: 200%;">내 정보 수정</font>
			</div>
		</nav>
		<br>
		<section>
			<div>
			<br>
			<p>이름 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="width:350px;"></p>
			<p>이메일 &nbsp;&nbsp;&nbsp;<input type="text" style="width:100px;">@<input type="text" style="width:80px;">
			<select>
				<option>직접 입력 하기</option>
				<option>naver.com</option>
				<option>google.com</option>
			</select></p>
			<p>휴대전화 <input type="text" style="width:350px;"></p>
			<p>주소 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" style="width:100px;">
			<input type="button" value="주소 검색" style="background-color: white;"></p>
			<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="width:350px;"></p>
			<p>상세주소 <input type="text" style="width:350px;"></p>
			<p style="margin: 30px 0 30px 70px;"><input type="button" value="저장" style="width:370px;background-color: white;"></p>
			</div>
		</section>
			<%@include file="footer.jsp" %>
</div>
</body>
</html>
<!-- 

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
#clear{
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
section div{
	border: 2px solid black;
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
		<nav>
			<div>
  				<font style="font-weight: bold; font-size: 200%;">내 정보 수정</font>
			</div>
		</nav>
		<br>
		<section>
			<div>
			<br>
			<p>이름 <input style="text"></p>
			<p>이메일 <input style="text"></p>
			<p>휴대전화 <input style="text"></p>
			<p> <input style="text"></p>
			<p>주소 <input style="text"><input type="button" value="주소 검색"></p>
			<p> <input style="text"></p>
			<p> <input style="text"></p>
			</div>
		</section>


</div>
</body>
</html> -->