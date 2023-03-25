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
		
		$('#lprod').on('click', function() {
			$.ajax({
				url : 'http://localhost/jqpro/0324/LprodController.jsp',
				type : 'get',
				success : function(res) {
					//alert("성공");
					code = "<table border='1'>";
					code += "<tr><td>ID</td><td>GU</td><td>NM</td></tr>";
					
					$.each(res, function(i, v) {
						//code += `<tr><td>${v.id}</td><td>${v.gu}</td><td>${v.nm}</td></tr>`;
						code += "<tr><td>" + v.lprod_id + "</td><td>" + v.lprod_gu + "</td><td>" + v.lprod_nm + "</td></tr>";
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
		
	})
	
</script>
</head>
<body>

<div class="box">
	<p>
	</p>
		
	<input type="button" value="LPROD리스트" id="lprod"><br>
	<br><br>
	<div class="result" id="result1"></div>
</div>

</body>
</html>