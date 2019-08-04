<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<form> 
<input type="text" class="cap" name="userid" id="userid" />
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
				</c:if>
			
	</form>
