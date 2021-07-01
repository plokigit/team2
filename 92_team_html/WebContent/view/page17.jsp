<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지_공지사항</title>
<style type="text/css">
	legend{margin: auto;}
	
	fieldset{
		width: 50%; 
		margin: auto;
		border: 0;
	}

	table {
		margin: 10px auto;
		width: 800px;
		border-collapse: collapse;
		border-color: navy;
	}
	
	table, th, td {
		border: 1px solid black;
		padding: 2px;
		text-align: center;
	}
	
	.notice{
		font-size: 18px;
	}
	
	form.form_btn{display: inline;}
	
	.n_btn{
		border: 0;
		outline: 0;
	}
	
	#n_write{
		float: right;
		border: 0;
		outline: 0;
		padding: 0px 20px;
		margin: 5px;
	}
</style>
</head>
<body>
	<%-- 현재 페이지에서 다른 페이지 가져오기  --%>
	<%@ include file="top.jsp" %>
	
	<h2 style="text-align: center;"> :: 관리자페이지 :: </h2>
	<fieldset>
		<legend><h3> 공지사항 관리 </h3></legend>
		<button id="n_write" onclick="" >글쓰기</button>
	<table>
		<thead>
			<tr bgcolor="#dedede" class="notice">
				<th style="width: 65%;">공지사항</th>
				<th style="width: 20%">날짜</th>
				<th style="width: 15%">관리</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>공지 내용</td>
				<td>게시 날짜</td>
				<td><form method="post" class="form_btn">
					<input type="button" value="수정" class="n_btn" onclick="">
				</form>
				<form method="post" class="form_btn">
					<input type="button" value="삭제" class="n_btn" onclick="">
				</form></td>
			</tr>
				
		</tbody>
	</table>
	</fieldset>
</body>
</html>