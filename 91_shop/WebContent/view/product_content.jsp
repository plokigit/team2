<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	margin: 10px auto;
	width: 700px;
	height: 800px;
	border-collapse: collapse;
	font-size: 105%;
	border-color: navy;
}

table, th, td {
	border: 1px solid black;
	padding: 10px;
}

th {
	background-color: skyblue;
	width: 35%;
}
</style>
<script type="text/javascript">
	function add_cart() {
		if(${login=="ok"}){
			location.href="${pageContext.request.contextPath}/MyController?cmd=addCart&p_idx=${vo.idx}&m_idx=${mvo.idx}";
			alert("add to cart");
		}else{
			alert("need login");
		}
	}
	function show_cart() {
		if("${mvo.id}"!=""){
			location.href="${pageContext.request.contextPath}/MyController?cmd=showCart&m_idx=${mvo.idx}";
		}else{
			alert("need login");
		}
	}
</script>
</head>
<body>
<br>
	<%@include file="top.jsp" %>
<br>
	<table>
		<tr>
		
			<th>제품Category</th>
			<td>${vo.category }</td>
		</tr>
		<tr>
			<th>제품번호</th>
			<td>${vo.p_num }</td>
		</tr>
		<tr>
			<th>제품이름</th>
			<td>${vo.p_name }</td>
		</tr>
		<tr>
			<th>제품판매사</th>
			<td>${vo.p_company }</td>
		</tr>
		<tr>
			<th>제품가격</th>
			<td>시가: <fmt:formatNumber value="${vo.p_price }" pattern="#,###"/>원<br>
			<font style="color:tomato;">(할인가: <fmt:formatNumber value="${vo.p_saleprice }" pattern="#,###"/>원)</font></td>
		</tr>
		<tr>
			<th>제품설명</th>
			<td>${vo.p_content }</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><img src="${pageContext.request.contextPath}/images/${vo.p_image_l }" width="400px"></td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="button" value="장바구니에 담기" onclick="add_cart()" /> 
			<input type="button" value="장바구니 보기" onclick="show_cart()" /></td>
		</tr>
	</table>
</body>
</html>