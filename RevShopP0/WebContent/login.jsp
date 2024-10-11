<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #FFFFFB;">

	<%@ include file="header.jsp"%>
		<%
	String message = request.getParameter("message");
	%>
	<div class="container">
		<div class="row"
			style="margin-top: 5px; margin-left: 2px; margin-right: 2px;">
			
				<form action="./LoginSrv" method="post" class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2"
				style="  padding: 10px;">
				<div style="font-weight: bold;" class="text-center">
					<h2 >Login or Signup</h2>
					<%
					if (message != null) {
					%>
					<p style="color: #FFFFFB;">
						<%=message%>
					</p>
					<%
					}
					%>
					</div>
					
  <!-- Email input -->
  <div class="row">
<div class="col-md-12 form-group">
  <div data-mdb-input-init class="form-outline mb-4">
    <label class="form-label" for="last_name" ></label>
    <input type="email" id="last_name" name="username" class="form-control" placeholder="Email" required>
  </div> </div></div>

  <!-- Password input -->
  <div class="row">
<div class="col-md-12 form-group">
  <div data-mdb-input-init class="form-outline mb-4">
   <label class="form-label" for="last_name" ></label>
    <input type="password" id="last_name" name="password" class="form-control" placeholder="Password" required>
   </div></div>
  </div>
  <div></div>
<div class="row">
<div class="col-md-12 form-group">
<div data-mdb-input-init class="form-outline mb-4">
<label for="userrole">Login As</label> 
<select name="usertype"id="userrole" class="form-control" required>
<option value="customer"  selected>CUSTOMER</option>
<option value="admin">ADMIN</option>
</select>
</div> </div>
</div>

  <!-- 2 column grid layout for inline styling -->
  

  <!-- Submit button -->
  <button  type="submit" data-mdb-button-init data-mdb-ripple-init class=" btn-block mb-4" style="background-color: #FF1C69;">Sign in</button>

  <!-- Register buttons -->
  
<br>  <div class="text-center">
    <p>New user? <a href="register.jsp" style="color: #FF1C69;">Sign Up</a></p>
    </div>
  
</form>
		</div>
	</div>

	

</body>
</html>