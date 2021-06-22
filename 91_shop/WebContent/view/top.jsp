<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        a:link{text-decoration:none; color:navy}
        a:visited{text-decoration:none; color:navy}
        a:hover{text-decoration:none; color:red}
		body{ text-align: center } 
		hr{
			width: 600px;
			border: 1px;
			color: navy;
		}

		div#header, div#nav{
			width: 600px;
			margin: 10px auto;
			text-align: center;
		}
		div#wrap{ margin: 0 auto; }
    </style>
    <script type="text/javascript">
    	function logout() {
    		location.href="${pageContext.request.contextPath }/MyController?cmd=logout";
		}
    </script>
  </head>
  <body>
  <div id="wrap">
	  <hr noshade/>
	  <div id="header">
		  <span class="title">
			  HANBIT SHOPPING CENTER
		  </span>
	  </div>
	  <hr noshade/>
	  <div id="nav">
		  <a href="${pageContext.request.contextPath}/MyController?cmd=list&category=com001">컴퓨터</a> | 
		  <a href="${pageContext.request.contextPath}/MyController?cmd=list&category=ele002">가전제품</a> | 
		  <a href="${pageContext.request.contextPath}/MyController?cmd=list&category=sp003">스포츠</a>
		  &nbsp;
		  <div style="float:right;">
		  <c:choose>
		  	<c:when test="${login != 'ok'}">
		  		<a href="${pageContext.request.contextPath}/MyController?cmd=login">로그인</a>
		  	</c:when>
		  	<c:otherwise>
		  		${mvo.name } 님 | <a onclick="logout()">로그아웃</a> | 
		  		<a href="${pageContext.request.contextPath}/MyController?cmd=showCart">장바구니</a>
		  	</c:otherwise>
		  </c:choose>
		  </div>
	  </div>
	  <hr noshade/>
  </div>
  </body>
</html>