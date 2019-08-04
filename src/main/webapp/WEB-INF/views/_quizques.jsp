<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
	<script type="text/javascript" src="webjars/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="webjars/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
.question{
	border: 1px solid #d3d3d3;
	border-radius: 25px;
	padding-left:20px;
	padding-bottom:10px;
	
	
	
}

.show{
	border-radius:25px;
	heigh:150px;
	background-color:black;
	color:white;
	width:150px;
}

.ans{
	border: 1px solid #d3d3d3;
	padding-left: 400px;
}
	
</style>
<script type="text/javascript">
 $(document).ready(function(){
	 var $submit = $(".show").hide(),
     $cbs = $('input[name="ans"]').click(function() {
         $submit.toggle( $cbs.is(":checked") );
     });

}); 
$('.std').on('change',function(){
	$('.std').not(this).prop('checked',false);
});	
	</script>
</head>
<div class="ans"><h4><c:out value="${msg}"></c:out></h4></div>



<c:forEach var="m" items="${getAns }">
	<input type="hidden" class="pbk" name="anss" value="${m.correctans }" />
</c:forEach>

<%-- <table>
<c:forEach var="quiz" items="${ques}">
<tr class="ques">

	<th>Question</th>
<td>	

<ol type="1">
	<li>
		<input type="hidden" name="quesid" value="${quiz.questionid}"></input>
		<c:out value="${quiz.question}"></c:out>
	</li>
</ol>
</td>
<th>
</tr>


<tr>
<th>Options</th>
<td>
<ol type="a">
	

	<li>${quiz.opt1}:<input type="checkbox" class="std" value="${quiz.opt1}"  name="ans" ></li>
	<li>${quiz.opt2}:<input type="checkbox" class="std" value="${quiz.opt2}"  name="ans" ></li>
	<li>${quiz.opt3}:<input type="checkbox" class="std" value="${quiz.opt3}"  name="ans" ></li>
	<li>${quiz.opt4}:<input type="checkbox" class="std" value="${quiz.opt4}"  name="ans" ></li>
	
	
</ol>
</td>
</tr>
<tr><td><input class="show" type="submit" value="next" class="pbk"></td></tr>



</c:forEach>

</table> --%>






<div class="question">

<c:forEach var="quiz" items="${ques}">


	<h4>Question</h4>

<ol type="1">
	<li>
		<input type="hidden" name="quesid" value="${quiz.questionid}"></input>
		<c:out value="${quiz.question}"></c:out>
	</li>
</ol>


<h4>Options</h4>

<ol type="a">
	

	<li>${quiz.opt1}:<input type="checkbox" class="std" value="${quiz.opt1}"  name="ans" ></li>
	<li>${quiz.opt2}:<input type="checkbox" class="std" value="${quiz.opt2}"  name="ans" ></li>
	<li>${quiz.opt3}:<input type="checkbox" class="std" value="${quiz.opt3}"  name="ans" ></li>
	<li>${quiz.opt4}:<input type="checkbox" class="std" value="${quiz.opt4}"  name="ans" ></li>
	
	
</ol>
<input class="show" type="submit" value="next" class="pbk">



</c:forEach>


</div>