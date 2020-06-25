<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.foodcourt.common.UserType" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p id="prompt" style="display:none">Remove these users?</p>
<form action="manage_accounts" method="post">
	<table id="user_list" style="border: 1px solid black; border-collapse: collapse;">
		<tr style="border: 1px solid black; border-collapse: collapse;">
			<td style="border: 1px solid black; border-collapse: collapse;"></td>		
			<td style="border: 1px solid black; border-collapse: collapse;">User ID</td>
			<td style="border: 1px solid black; border-collapse: collapse;">Username</td>
			<td style="border: 1px solid black; border-collapse: collapse;">Type</td>
		</tr>
		<c:forEach items = "${Users}" var="user">
			<tr style="border: 1px solid black; border-collapse: collapse;">
				<td style="border: 1px solid black; border-collapse: collapse;"><input type = "checkbox" name = "userlist" value = "${user.getUserID()}"></td>		
				<td style="border: 1px solid black; border-collapse: collapse;"><c:out value="${user.getUserID()}"/> </td>
				<td style="border: 1px solid black; border-collapse: collapse;"><c:out value="${user.getUsername()}"/> </td>
				<td style="border: 1px solid black; border-collapse: collapse;"><c:out value="${user.getUserType()}"/> </td>
			</tr>
		</c:forEach>
	</table>
	<table id="add_form" style="display:none">
		<tr><td>Name:</td> <td><input type="text" name="name"></td></tr>
		<tr><td>email:</td> <td><input type="text" name="email"></td></tr>
		<tr><td>Username:</td> <td><input type="text" name="username"></td></tr>
		<tr><td>Password:</td> <td><input type="password" name="password" size = "21"></td></tr>
		<tr><td>User type:</td> <td><input type="text" name="type"></td></tr>
	</table>	
	<button type="button" id="btn_remove" onclick="confirmationForm()">Remove</button>
	<button type="submit" name="btn" id="btn_yes" value = "remove" style="display:none">Yes</button>
	<button type="button" id="btn_no" style="display:none" onclick="confirmationForm()">No</button>
	<button type="button" name="btn_new" id="btn_new" onclick="newAccountForm()">New account</button>
	<button type="submit" name="btn" id="btn_add" value = "add" style="display:none">Add new</button>
	<button type="button" name="btn_cancel" id="btn_add" style="display:none" onclick="newAccountForm()">Cancel</button>
</form>
<script>
function confirmationForm() {
	var table = document.getElementById("user_list")
	if (document.getElementById("prompt").style.display === "none") {
		for(var i = 1, row; row = table.rows[i]; i++) {
			if (row.cells[0].children[0].checked == false) {
				row.style.display = "none";
			}
		}
		document.getElementById("prompt").style.display = "block";
		document.getElementById("btn_remove").style.display = "none";
		document.getElementById("btn_new").style.display = "none";
		document.getElementById("btn_yes").style.display = "block";
		document.getElementById("btn_no").style.display = "block";
		document.getElementById("btn_add").style.display = "none";
	}
	else {
		for(var i = 1, row; row = table.rows[i]; i++) {
			row.style.display = "";
		}
		document.getElementById("prompt").style.display = "none";
		document.getElementById("btn_remove").style.display = "block";
		document.getElementById("btn_new").style.display = "block";
		document.getElementById("btn_yes").style.display = "none";
		document.getElementById("btn_no").style.display = "none";
		document.getElementById("btn_add").style.display = "block";
	}
}

function newAccountForm() {
	if (document.getElementById("add_form").style.display === "none") {
		document.getElementById("add_form").style.display = "";
		document.getElementById("user_list").style.display = "none";
		document.getElementById("btn_remove").style.display = "none";
		document.getElementById("btn_new").style.display = "none";
		document.getElementById("btn_add").style.display = "block";
		document.getElementById("btn_cancel").style.display = "block";
	}
	else {
		document.getElementById("add_form").style.display = "none";
		document.getElementById("user_list").style.display = "";
		document.getElementById("btn_remove").style.display = "block";
		document.getElementById("btn_new").style.display = "block";
		document.getElementById("btn_add").style.display = "none";
		document.getElementById("btn_cancel").style.display = "none";
	}
}
</script>
</body>
</html>