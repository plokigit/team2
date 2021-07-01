<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div.notice{
		margin:auto;
		text-align: center;
		width : 1000px;
		padding : 20px;
		border : 1px solid black;
	}
	table{
		margin : auto;
		text-align: center;
		width : 900px;
	}
	th{
		border-bottom: 1px solid black;
	}
	#p_btn{
		padding-top: 20px;
	}
</style>
</head>
<body>
	<%@ include file="top.jsp" %>
	
	<div class="notice">
		<h2 style="display: inline;">공지사항</h2>
		<input type='date' name='checkout'  style="float:right;"/>
		<br>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성날짜</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach begin="1" end="5" step="1" var="k">
					<tr>
						<th>${k }</th>
						<th>공지테스트</th>
						<th>admin</th>
						<th><%= sf.format(nowTime) %></th>
						<th>1</th>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="5"  id="p_btn">
						<%-- 이전 --%>
						<span style="color: gray; padding: 5px; border: 1px solid gray">이전으로</span>
						&nbsp;&nbsp;
						<%-- 번호 --%>
					   <c:forEach begin="1" end="4" step="1" var="k">
						   <span style="background-color: white; padding: 5px;">${k}</span>
					   </c:forEach>
						&nbsp;&nbsp;
						<%-- 다음 --%>
						<span style="color: gray; padding: 5px; border: 1px solid gray">다음으로</span>
					</td>
					<td> <button onclick="write_go()">글쓰기</button></td>
			</tr>
			</tfoot>
		</table>
		
		
		
	</div>
	
	
</body>
</html>