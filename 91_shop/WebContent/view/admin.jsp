<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style type="text/css">
table {
	margin: 10px auto;
	width: 700px;
	border-collapse: collapse;
	font-size: 10pt;
	border-color: navy;
}

table, th, td {
	border: 1px solid black;
	padding: 5px;
}

th {
	background-color: skyblue;
	width: 35%;
}
</style>
<script type="text/javascript">
</script>
</head>
<body>
<br>
	<%@include file="top.jsp" %>
<br>
	<h2>상품 등록</h2>
	<form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/MyController?cmd=product_write">
	<table>
	<tbody>
		<tr>
		<th>분류</th>
			<td>
				<input type="radio" name="category" value="com001" required>컴퓨터
				<input type="radio" name="category" value="ele002" required>가전
				<input type="radio" name="category" value="sp003" required>스포츠
			</td>
		</tr>
		<tr>
			<th>제품번호</th>
			<td><input type="text" name="p_num" required></td>
		</tr>
		<tr>
			<th>제품이름</th>
			<td><input type="text" name="p_name" required></td>
		</tr>
		<tr>
			<th>제품판매사</th>
			<td><input type="text" name="p_company" required></td>
		</tr>
		<tr>
			<th>상품가격</th>
			<td><input type="number" name="p_price" required></td>
		</tr>
		<tr>
			<th>할인가</th>
			<td><input type="number" name="p_saleprice" required></td>
		</tr>
		<tr>
			<th>작은 상품 이미지</th>
			<td><input type="file" name="p_image_s" required></td>
		</tr>
		<tr>
			<th>큰 상품 이미지</th>
			<td><input type="file" name="p_image_l" required></td>
		</tr>
		<tr>
			<th>제품설명</th>
			<td><textarea style="width:450px; height:300px;" name="p_content" required></textarea></td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="상품 등록"> 
		</tr>
	</tfoot>
	</table>
	</form>
</body>
</html>