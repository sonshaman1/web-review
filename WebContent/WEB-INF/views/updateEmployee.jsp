<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
	<title>Nguyen Hong Son</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
</head>
<body>
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-85 p-b-20">
                <h2 class="login100-form-title p-b-70">Change Info Employee</h2>

                    <form:form action="login/update_employee/${employee.username}.htm" 
   		     					modelAttribute="employee" method="post">
                      <div class="wrap-input100 validate-input m-t-85 m-b-35">
                    <label for="email">Username:</label>
                    <form:input path="username" cssClass="form-control" required="required" oninvalid="this.setCustomValidity('Username không được bỏ trống!')"
													oninput="this.setCustomValidity('')"/>
                  </div>
                  <div class="wrap-input100 validate-input m-t-85 m-b-35">
                    <label for="pwd">Password:</label>
                    <form:input path="password" cssClass="form-control" required="required" oninvalid="this.setCustomValidity('Số lượng không hợp lệ (1 <-> 100)!')"
													oninput="this.setCustomValidity('')"/>
                  </div>
                  <div class="wrap-input100 validate-input m-t-85 m-b-35">
                    <label for="pwd">Name:</label>
                    <form:input path="name" cssClass="form-control" required="required" oninvalid="this.setCustomValidity('Name không được bỏ trống!')"
													oninput="this.setCustomValidity('')"/>
                  </div>
                  <div class="wrap-input100 validate-input m-t-85 m-b-35">
                    <label for="pwd">Email:</label>
                    <form:input path="email" cssClass="form-control" required="required" oninvalid="this.setCustomValidity('Name không được bỏ trống!')"
													oninput="this.setCustomValidity('')"/>
                  </div>
                  <div class="wrap-input100 validate-input m-t-85 m-b-35">
                    <label for="pwd">Role:</label>
                    <form:select cssClass="form-control" path="role">
                    <form:option value="1">Amin</form:option>
                    <form:option value="0">Employee</form:option>
                    </form:select>
                  </div>
           
    
    
                      <button class="login100-form-btn" type="submit" class="btn btn-default">Submit</button>
                      <a href="login/indexEmployee.htm" class="login100-form-title p-b-70">Home</a>
                      ${message}
                    </form:form>
                
                
 				</div>
		</div>
</div>
</body>
</html>