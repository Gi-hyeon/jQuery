<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/mystyle.css">
<style type="text/css">
	table{
		border: 2px solid powderblue;
	}
	td {
		width: 150px;
		height: 30px;
		text-align: center;
	}
</style>
<script src="../js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		
		$('#buyer').on('click', function() {
			$.ajax({
				url : 'http://localhost/jqpro/0324/BuyerController.jsp',
				type : 'get',
				success : function(res) {
					//alert("성공");
					code = "<table border='1'>";
					code += "<tr><td>ID</td><td>NM</td></tr>";
					
					$.each(res, function(i, v) {
						//code += `<tr><td>${v.id}</td><td>${v.gu}</td><td>${v.nm}</td></tr>`;
						code += "<tr><td>" + v.id + "</td><td>" + v.name + "</td></tr>";
					})
					
					code += "</table>"; 
					
					$('#result1').html(code);
				},
				error : function(xhr) {
					alert("상태 : " + xhr.status);
				},
				dataType : 'json'
			})
		});
		
		
		$('#select').on('click', function() {
			
			idValue = $('#idValue').val();
			
			$.ajax({
				url : 'http://localhost/jqpro/0324/BuyerController2.jsp',
				type : 'get',
				data : { id : idValue },
				success : function(res) {
					code = "<table border='1'>";
					code += "<tr><td>" + res.id + "</td><td>" + res.name + "</td><td>" + res.lgu + "</td><td>" + res.bank + "</td><td>" + res.bankno + "</td>"
					code += "<td>" + res.bankname + "</td><td>" + res.zip + "</td><td>" + res.add1 + "</td><td>" + res.add2 + "</td><td>" + res.mail + "</td></tr>"
					code += "</table>";
					
					$('#result2').html(code);
				},
				error : function(xhr) {
					alert("상태 : " + xhr.status);
				},
				dataType : 'json'
			})
		});
		
	})
	
</script>
</head>
<body>

<div class="box">
	<p>
	</p>
		
	<input type="button" value="buyer" id="buyer"><br>
	<input type="button" value="Select" id="select">&nbsp;
	<input type="text" placeholder="검색" id="idValue" value="P10101">
	<br><br>
	<div class="result" id="result1"></div>
	<div class="result" id="result2"></div>
</div>

</body>
</html>