<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지_대문이미지등록</title>
<style type="text/css">
	#edi_img{
		text-align: center;
		margin: 50px;
	}
	
	fieldset{
		margin: auto;
		width: 40%;
		border: 0;
		outline: 0;
	}
	
	div{text-align: center;}
	
	.btn_file{
       position: relative;
       overflow: hidden;
     }
   .btn_file input[type=file] {
        position: absolute;
        top: 0;
        right: 0;
        min-width: 100%;
        min-height: 100%;
        font-size: 100px;
        text-align: right;
        filter: alpha(opacity=0);
        opacity: 0;
        outline: none;
        background: white;
        cursor: inherit;
        display: block;
     }
    </style>
</head>
<body>
	<%-- 현재 페이지에서 다른 페이지 가져오기  --%>
    <%@ include file="top.jsp"%>
    
    <p id="edi_img"><img src="../images/weston_jo.jpg" alt="image" width="400"></p>
    <fieldset>
   	<div>
		<th> <input type="text" class="image_text" readonly="readonly" > </th>
		<span class="btn f_btn btn_file">
	        파일추가 <input type="file">
	    </span>
	</div>
	</fieldset>
	
	
</body>
</html>