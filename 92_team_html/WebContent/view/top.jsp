<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
   #log{
      text-align: right;
      font-size: 12px;
      margin-right: 55px;
   }
   #log a{
      text-decoration: none;
      color: white;
   }
   
   .title{
      background-color: black;
      color:white;
   }
   
   #logo{
         text-align: center;
         margin: 30px 0 30px 0;
   }
   	header{
   		width: 100%;
   		background-color: #6d5d95;
   		margin: -100% -100% -50px -100%;
   		padding: 100% 100% 50px 100%;
   	}
</style>
</head>
<body>
		<header>
        <div id="log">
           <c:choose>
              <c:when test="${login=='ok' }">
                 @@@님  | 
                 <a href="/MyController?cmd=logout">로그아웃</a>  | 
                 <a href="">예약하기</a>  |
              </c:when>
              <c:otherwise>
                 <a href="/MyController?cmd=login">로그인</a>
              </c:otherwise>
           </c:choose>
        </div>
        
     <p id="logo">
        <img src="../images/team_logo.png" alt="image" width="200px">
     </p>
		</header>
</body>
</html>
