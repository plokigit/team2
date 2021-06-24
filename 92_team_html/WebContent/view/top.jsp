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
   
   .title{
      background-color: black;
      color:white;
   }
   
   #logo{
         text-align: center;
         margin-bottom: 50px;
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
        <img src="../upload/team_logo.png" alt="image" width="200px">
     </p>
		</header>
</body>
</html>
