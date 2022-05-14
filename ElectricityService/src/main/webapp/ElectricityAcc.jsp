<%@page import="model.ElectricityAcc"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%
	// SAVE
	if (request.getParameter("accName") != null) {	
		
		ElectricityAcc account = new ElectricityAcc();
		String stsMsg = "";
		
		
		//Insert--------------------------
		if (request.getParameter("hidItemIDSave") == "") 
		 { 
			stsMsg = account.createAccount(request.getParameter("accName"), 
		 request.getParameter("accNumber"), 
		 request.getParameter("premisesID")); 
		 
		 } 
		else//Update----------------------
		 { 
			stsMsg = account.updateAccount(request.getParameter("hidItemIDSave"), 
		 request.getParameter("accName"), 
		 request.getParameter("accNumber"), 
		 request.getParameter("premisesID"));
		
		 } 
		 session.setAttribute("statusMsg", stsMsg); 
		} 
		//Delete-----------------------------
		if (request.getParameter("hidItemIDDelete") != null) 
		{ 
			ElectricityAcc account = new ElectricityAcc();
		 String stsMsg = account.deleteAccount(request.getParameter("hidItemIDDelete")); 
		 session.setAttribute("statusMsg", stsMsg); 	
		}
%>  
    
    

    
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
					<form id="formItem" name="formItem" method="POST" action="ElectricityAcc.jsp">
						Account Name:
						<input 
							id="accName" 
							name="accName" 
							type="text" 
							class="form-control form-control-sm"
						><br>

						Account Number:  
						<input 
							id="accNumber"
							name="accNumber" 
							type="text" 
							class="form-control form-control-sm"
						><br>

						Premises ID: 
						<input 
							id="premisesID" 
							name="premisesID" 
							type="text" 
							class="form-control form-control-sm"
						><br>


						<input 
							id="btnSave" 
							name="btnSave" 
							type="button" 
							value="Save" 
							class="btn btn-primary"
						>

						<input type="hidden" name="hidAccIDSave" id="hidAccIDSave" value="">
						<br><br>
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
