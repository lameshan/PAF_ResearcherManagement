<%@page import="model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Management</title>

<link rel="stylesheet" href="Views/bootstrap.min.css"> 
 
<script src="components/jquery-3.2.1.min.js"></script>
<script src="components/main.js"></script>
</head>
<body>

<div class="container"> 
		<div class="row">  
		
			<div class="col-8">       
				<h1 class="m-3">Customer Management</h1>        
				
				<form id="formCustomer" name="formCustomer" method="post" action="Customer.jsp">  
					Customer Name:  
					<input id="customerName" name="customerName" type="text" class="form-control form-control-sm">  
					
					<br> 
					Customer Email:  
					<input id="customerEmail" name="customerEmail" type="text" class="form-control form-control-sm">  
					
					<br>
					 Customer Type:  
					 <input id="customerType" name="customerType" type="text" class="form-control form-control-sm">  
					 
					 <br> 
					 Customer Contact:  
					 <input id="customerContact" name="customerContact" type="text" class="form-control form-control-sm">  
					 
					
					 
					 
					 <br>  
					 <input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">  
					 <input type="hidden" id="hidcustomerIDSave" name="hidcustomerIDSave" value=""> 
					 
				</form> 
				
				<div id="alertSuccess" class="alert alert-success"></div>  
				<div id="alertError" class="alert alert-danger"></div> 
				
				<br>
					
				
           
                    <br>
                   <div id="divItemsGrid">   
					<%    
						Customer customerObj = new Customer();
						out.print(customerObj.readCustomer());   
					%>  
					
					<br>
					<br>
					 <a href="Login.jsp" class="btn btn-success">Logout</a>
				</div> 
                   
                </div>
            </div>
				  
 			</div>
 		 
 		</div>    
 		
 
	</div> 

</body>
</html>