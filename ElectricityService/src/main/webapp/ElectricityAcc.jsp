<%@page import="model.ElectricityAcc"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/ElectricityAcc.js"></script>
<title>Electricity Account</title>
</head>
<body>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>Electricity Account</h1>
				<form id="formItem" name="formItem" method="POST"
					action="ElectricityAcc.jsp">
					Account Name: <input id="accName" name="accName" type="text"
						class="form-control form-control-sm"><br>

					Account Number: <input id="accNumber" name="accNumber" type="text"
						class="form-control form-control-sm"><br>

					Premises ID: <input id="premisesID" name="premisesID" type="text"
						class="form-control form-control-sm"><br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						name="hidItemIDSave" id="hidItemIDSave" value=""> <br>
					<br>
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>
				<div id="divItemsGrid">
					<%
					ElectricityAcc account = new ElectricityAcc();
					out.print(account.viewAccount());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
