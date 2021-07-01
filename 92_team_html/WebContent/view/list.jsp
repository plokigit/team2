<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">


<style type="text/css">
.list{
	text-align: center;
}
table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    text-align: center;
  }
  thead tr {
    background-color: black;
    color: #ffffff;
  }
  tbody tr:nth-child(2n) {
    background-color: LightGray;
  }
  tbody tr:nth-child(2n+1) {
    background-color: white;
  }
  ul {
	list-style:none;
	float:left;
	display:inline;
	text-align: center;
  }
  ul li {
	float:left;
  }
  ul li a {
	float:left;
	padding:4px;
	margin-right:3px;
	width:15px;
	color:#000;
	font:bold 12px tahoma;
	border:1px solid #eee;
	text-align:center;
	text-decoration:none;
  }
  ul li a:hover, ul li a:focus {
	color:#fff;
	border:1px solid #f40;
	background-color:#f40;
  }
  .demo {width:330px; border:1px solid #CCCCCC; padding:10px; background-color:#FFFFFF}
.text {font-size:12px; margin-right:4px; width:80px; line-height:20px;}
.datepicker_input1 {border:1px solid #999999; margin-right:4px; width:70px;}
.datepicker_input2 {border:1px solid #999999; margin-right:4px; width:70px;}
.datepicker1_div {margin-right:10px; float:left;}
</style>


<title>Insert title here</title>
</head>
<body>
	<div class="list">
		<div class = "date">
			<div id="datepicker1" class="datepicker1_div" /></div>
			<span class="text">날짜</span> <input type="text" id="datepicker2" class="datepicker_input1"><br />
			<span class="text">날짜</span> <input type="text" id="datepicker3" class="datepicker_input1"><br />
		</div>
	
	<table>
	
      <thead>
        <tr>
          <th>번호</th><th>호텔/객실정보</th><th>룸</th><th>체크인</th><th>식사 정보</th><th>예약 상태</th><th>결제</th>
        </tr>
      </thead>
    
      <tbody>
        <tr>
           <td>Lorem</td><td>Ipsum</td><td>Dolor</td><td>Sit</td><td>Amet</td>><td>Sit</td><td>Amet</td>
        </tr>
        <tr>
           <td>Lorem</td><td>Ipsum</td><td>Dolor</td><td>Sit</td><td>Amet</td>><td>Sit</td><td>Amet</td>
        </tr>
        <tr>
           <td>Lorem</td><td>Ipsum</td><td>Dolor</td><td>Sit</td><td>Amet</td>><td>Sit</td><td>Amet</td>
        </tr>
        <tr>
           <td>Lorem</td><td>Ipsum</td><td>Dolor</td><td>Sit</td><td>Amet</td>><td>Sit</td><td>Amet</td>
        </tr>
        <tr>
           <td>Lorem</td><td>Ipsum</td><td>Dolor</td><td>Sit</td><td>Amet</td>><td>Sit</td><td>Amet</td>
        </tr>
      </tbody>
      
      
    </table>
    
    <ul>  
    	<li><a href="#">1</a></li>  
    	<li><a href="#">2</a></li>  
    	<li><a href="#">3</a></li>  
    	<li><a href="#">4</a></li>  
    	<li><a href="#">5</a></li>  
    	<li><a href="#">6</a></li>  
    	<li><a href="#">7</a></li>  
    	<li><a href="#">8</a></li>  
    	<li><a href="#">9</a></li>  
    	<li><a href="#">10</a></li>  
	</ul>
	</div>
</body>
</html>