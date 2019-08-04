<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.bcd{
display:none;
}
.header{
	padding-left: 350px;
	padding-bottom:20px;
}
#hd{

	border: 1px solid #d3d3d3;
	border-radius: 25px;
	margin-top:200px;
	padding-top: 20px;
	padding-bottom: 20px;
	margin-bottom:8px;
}
.inputag{
	padding-left: 400px;

}
.info{
	border:1px solid #d3d3d3;
 	border-radius:25px; 
 	margin-left:600px;
	margin-right:700px;
	padding-left: 40px;
	padding-top:2px;
	padding-bottom:2px;
/* 	margin-bottom:200px;
	margin-top:100px;
	padding-left: 40px;
	padding-top:20px;
	padding-bottom: 20px;
  */*/	/* margin-top:60px; */
 }
.abc{
	border-radius:25px;
	heigh:150px;
	background-color:black;
	color:white;
	width:150px;
}

h5{
	color:grey;
}
</style>
<script type="text/javascript" src="webjars/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="webjars/bootstrap/4.3.1/css/bootstrap.min.css">
<script type="text/javascript">
	
	 $(document).ready(function(){
		/*  $.ajax({
			url:"quizques",
			method:"GET"
		}).done(function(res){
			$('.row>.col-md-4:eq(0)').html(res);
		});    */
			$('.abc').click(function(){
				$(".abc").hide();
				$(".inputag").hide();
				$("#hd").hide();
			});
			$('body').on('click','.abc',function(){
				$.ajax({
					url:"quizques",
					method:"POST"
				}).done(function(res){
					$('.row>.col-md-12:eq(0)').html(res);
				});
			});
			
		/* }) */
		var answer;
		var corrans;
		$('body').on('click','.std',function(){
			answer = $(this).attr('value');
			corrans= $('.pbk').attr('value');
		})
		$('body').on('click','.show',function(){
			var userid= $('#userid').attr('value');
			$.ajax({
				url:"quizques",
				method:"POST",
				data:{'answer':answer,'corrans':corrans,'userid':userid}
			}).done(function(res){
				$('.row>.col-md-12:eq(0)').html(res);
			})
		});
		});
</script>
</head>
<body>
<h3>Software-Eng II Test</h3>
<div class="container" id="hd">
<div class="header"><h1>Enter Your Reg ID</h1></div>
<form method="post">
<div class="inputag"><input type="text" name="userid" id="userid"  value="${student.userid }"></div>

</form>
</div>
<c:if test="${student ne null }">
<div class="info">
<table>	
					<tr>
						<th><h4>Reg#: </h4></th>
						<td><h5><c:out value="${student.userid}" /></h5></td>
					</tr>
					<tr>
						<th><h4>Name:</h4></th>
						<td><h5><c:out value="${student.password}" /></h5></td>
					</tr>
					

				</table>
				
				<br>
<input type="submit" value="Start" class="abc">
</div>
</c:if>



<div class="container">
		<div class="row">
			<div class="col-md-12"></div>
		</div>
	</div>


<%-- 	<form method="get" action="quizques">
		<div class="col">
			<input type="text" class="cap" name="userid" id="userid" value="${student.userid}" />
			<c:if test="${student ne null}">
			
				<table>
					<tr>
						<th>Reg #</th>
						<td><c:out value="${student.userid}" /></td>
					</tr>
					<tr>
						<th>Name</th>
						<td><c:out value="${student.password}" /></td>
					</tr>
					

				</table>

 --%>
	
<%-- </c:if>
	</div>		
	</form>
		 --%>
</body>
</html>