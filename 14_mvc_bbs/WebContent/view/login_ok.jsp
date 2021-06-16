<%@page import="com.ict.db.DAO"%>
<%@page import="com.ict.db.BVO"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
	<c:when test="${empty bvo}">
	    <script>
	       var k = confirm("로그인 실패\n회원가입 할까요?");
	       if(k){
	    	   location.href="join.jsp";
	       }else{
	    	   location.href="index.jsp";
	       }
	    </script>
	</c:when>
	<c:otherwise>
		 <script>
		 	// alert("로그인 성공");
		 	location.href="${pageContext.request.contextPath }/MyController?cmd=list&cPage=1"
		 </script>
	</c:otherwise>
</c:choose>   
