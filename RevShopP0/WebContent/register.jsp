<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
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

			<form action="./RegisterSrv" method="post"
				class="col-md-6 col-md-offset-3" style="padding: 10px;">
				
				     <div style="font-weight: bold;" class="text-center">
					<h3>Sign Up</h3>
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

				<div class="row">
					<div class="col-md-6 form-group">
						<div data-mdb-input-init class="form-outline mb-4">
							<label for="first_name"></label> <input type="text"
								name="username" class="form-control" id="first_name"
								name="first_name" placeholder="Name" required>
						</div>
					</div>

					<div class="col-md-6 form-group">
						<div data-mdb-input-init class="form-outline mb-4">
							<label for="last_name"></label> <input type="email" name="email"
								class="form-control" id="last_name" name="last_name"
								placeholder="Email" required>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div data-mdb-input-init class="form-outline mb-4">
						<label for="last_name"></label>
						<textarea name="address" class="form-control" id="last_name"
							name="last_name" placeholder="Address" required></textarea>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 form-group">
						<div data-mdb-input-init class="form-outline mb-4">
							<label for="last_name"></label> <input type="number"
								name="mobile" class="form-control" id="last_name"
								name="last_name" placeholder="Mobile" required>
						</div>
					</div>
					<div class="col-md-6 form-group">
						<div data-mdb-input-init class="form-outline mb-4">
							<label for="last_name"></label> <input type="number"
								name="pincode" class="form-control" id="last_name"
								name="last_name" placeholder="PinCode" required>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 form-group">
						<div data-mdb-input-init class="form-outline mb-4">
							<label for="last_name"></label> <input type="password"
								name="password" class="form-control" id="last_name"
								name="last_name" placeholder="Password" required>
						</div>
					</div>
					<div class="col-md-6 form-group">
						<div data-mdb-input-init class="form-outline mb-4">
							<label for="last_name"></label> <input type="password"
								name="confirmPassword" class="form-control" id="last_name"
								name="last_name" placeholder="Confirm Password" required>
						</div>
					</div>
				</div>

				<div class="col-md-12">
					<button type="submit" data-mdb-button-init data-mdb-ripple-init
						class=" btn-block mb-4" style="background-color: #FF1C69;">Sign Up</button>
				</div>

			</form>
		</div>
	</div>



	<%@ include file="footer.html"%>
</body>
</html>