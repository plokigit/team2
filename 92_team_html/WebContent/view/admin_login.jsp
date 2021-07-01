<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>HOCANCE</title>
<meta charset="UTF-8">
<style type="text/css">
.wrap {
width:1000px;
text-align: center;
margin:0 50px;
}

#log {
	text-align: right;
	font-size: 12px;
}
section{
	text-align: center;
	
}
section div{
	width: 500px;
	margin: 0px auto;
	text-align: left;
	padding-left: 150px;
}
section table td{
	padding: 15px 5px;
}

</style>
</head>
<body>
<div class="wrap">
	<div id="log">
			<a href="/MyController?cmd=login">로그인</a>
		</div>

		<p id="logo">
			<img src="../images/hocance.png" alt="image" width="200px">
		</p>

		<nav>
			<div>
				<font style="font-size: 200%; font-weight: lighter; text-align: center;">관리자</font>
			</div>
		</nav>		
		<br>
		
		
		<section>
			<div>
				<table id="admin_login">
					<tr><td>아이디</td><td><input type="text" style="width:200px;"></td></tr>
					<tr><td>비밀번호</td><td><input type="password" style="width:200px;"></td></tr>
					<tr><td></td><td><input type="checkbox" name="id_chk" value="id_chk" >아이디 기억하기</td></tr>
				
				</table>
				
				<hr width="350px" align="left">
				<p style="margin: 30px 0 30px 70px;">
				<a href="#">아이디 찾기</a>&nbsp;&nbsp;<a href="#">비밀번호 찾기</a>  
				</p>
			
				<p style="margin: 30px 0 30px 85px;">
				<input type="button" value="login" style="width:170px;background-color: white;">
				</p>
				
			</div>
		</section>
		

</div>
</body>
</html>