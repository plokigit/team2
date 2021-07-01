<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>HOCANCE</title>
<meta charset="UTF-8">
<style type="text/css">
.wrap {
width:1000px;
text-align: center;
margin:0 50px;
}

#log {
	text-align: right;
	font-size: 12px;
}
ul{
	list-style: none;
}
li{
	float: right;
	margin-right: 20px;
}
.search{
	width: 50px;
	border: 1px; solid black;
}

.clear{
	content: "";
  	clear: both;
  	display: table;
}
section{
	height: 200px;
}
section .hotel_filter {
	height: 600px;
	width: 1000px;
	border: 2px solid black;
	font-size: 120%;
}

section #a,#b,#c{
	height: 100px;
	width: 400px;
	border: 2px solid black;
	font-size: 80%;
	margin: 50px 0 0 50px;
	padding: 10px 0 10px 0;
	float: left;
}

section #d{
	height: 180px;
	width: 400px;
	border: 2px solid black;
	font-size: 80%;
	margin: 50px 50px 0 50px;
	padding: 10px 0 10px 0;
	float: right;
}
section #e{
	height: 180px;
	width: 400px;
	border: 2px solid black;
	font-size: 80%;
	margin: 50px 50px 0 50px;
	padding: 10px 0 10px 0;
	float: right;
}
section #demo{
	text-align: left;
}
.slidecontainer {
  width: 100%;
}

.slider {
  -webkit-appearance: none;
  width: 80%;
  height: 15px;
  border-radius: 5px;
  background: #d3d3d3;
  outline: none;
  opacity: 0.7;
  -webkit-transition: .2s;
  transition: opacity .2s;
}

.slider:hover {
  opacity: 1;
}

.slider::-webkit-slider-thumb {
  -webkit-appearance: none;
  appearance: none;
  width: 25px;
  height: 25px;
  border-radius: 25%;
  background: black;
  cursor: pointer;
}

.slider::-moz-range-thumb {
  width: 25px;
  height: 25px;
  border-radius: 25%;
  background: #04AA6D;
  cursor: pointer;
	}
	th, td {
    padding: 10px;
  }
  
  table {
    width: 400px;
    height: 180px;
  }

</style>
</head>
<body>
<div class="wrap">
	<div id="log">
			<a href="/MyController?cmd=login">로그인</a>
		</div>

		<p id="logo">
			<img src="../images/hocance.png" alt="image" width="200px">
		</p>
		<div>
			<ul>
				<li>1</li>
				<li>2</li>
				<li><font style="font-size: 200%; font-weight: lighter; text-align: left;">호텔리스트</font></li>
				
			</ul>
		</div>

		<div>
			<div class="clear"></div>
		</div>	
		<div class="date_choice">
				<label for="people">인원 :</label>
				<select id="people" name="people">
					<option value="">인원 선택</option> 
				</select>
			
				<p>체크인 <input type="date" style="width:100px;"> - 
					체크아웃 <input type="date" style="width:100px;">
					
				<input type="text" placeholder="search" style="width: 50px;">
		</div>
		<div class="clear"></div>
		<br>
		
		<section>
			<div class="hotel_filter">
				<div class="facilities">
					<section id="a">
     					 <label><input type="checkbox" name="color" value="blue" checked> Blue</label>
      					 <label><input type="checkbox" name="color" value="red"> Red</label>
					</section>
				</div>
				
				<div class="accommodation">
					<section id="d">
					<h3>숙박 시설</h3>
     					 <label><input type="checkbox" name="color" value="blue" checked> Blue</label>
      					 <label><input type="checkbox" name="color" value="red"> Red</label>
					<div class="slidecontainer">
 						
  						<p><span id="demo"></span></p>
 						가격  <input type="range" min="0" max="110000" value="50000" class="slider" id="myRange">
					</div>

					<script>
					var slider = document.getElementById("myRange");
					var output = document.getElementById("demo");
					output.innerHTML = slider.value;
					
					slider.oninput = function() {
					  output.innerHTML = this.value;
					}
					</script>
					
					</section>
				</div>
				
				<div class="free">
					<section id="b">
     					 <label><input type="checkbox" name="color" value="blue" checked> Blue</label>
      					 <label><input type="checkbox" name="color" value="red"> Red</label>
					</section>
					
				</div>
				
				<div class="add">
					<section id="e">
     					 <table  id="table" >
							<tr>
								<td colspan="2" style="padding-right: 130px;"><h3>엑스트라 배드</h3></td>
								
								<td>d</td>
							</tr>
							<tr>
								<td rowspan="2"><h3>인원 추가</h3></td>
								<td>아동</td>
								<td>.</td>
							</tr>
							<tr>
								<td>성인</td>
								<td>.</td>
							</tr>
							
						</table>
					</section>
				</div>
				
				<div class="uniqueness">
					<section id="c">
     					 <label><input type="checkbox" name="color" value="blue" checked> Blue</label>
      					 <label><input type="checkbox" name="color" value="red"> Red</label>
					</section>
				</div>
				
				<div class="check_btn" style="margin-right: -300px">
				<button>완료</button>
				</div>
			</div>
		</section>
		
		
	
		

</div>
</body>
</html>