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
<form:form action="login/login.htm" modelAttribute="user" method="POST">
	<span class="login100-form-title p-b-70">
		LOGIN
	</span>
                <div class="wrap-input100 validate-input m-t-85 m-b-35">
                    ${message}
                    
                    <br>
                    <form:errors path="username"/>
                      <form:input path="username" type="text" class="input100"
                         id="exampleInputEmail" aria-describedby="emailHelp" 
                         placeholder="Enter Username..." required="required" 
                         oninvalid="this.setCustomValidity('Username không được bỏ trống!')"
						 oninput="this.setCustomValidity('')"/>
                      
               </div>
               
           <div class="wrap-input100 validate-input m-b-50">
                     <form:errors path="password"/>
                      <form:input path="password" type="password" 
                        class="input100" id="exampleInputPassword" 
                        placeholder="Password" required="required" 
                        oninvalid="this.setCustomValidity('Số lượng không hợp lệ (1 <-> 100)!')"
						oninput="this.setCustomValidity('')"/>
                     
           </div>
           
					
					
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                    <!-- <button class="btn btn-primary btn-user btn-block">
                      Login
                    </button> -->
                    <div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>
                    
                    <a href="main/index/1.htm" class="login100-form-title p-b-70">
                      HOME
                    </a>
           
</form:form>
				</div>
		</div>
</div>
</body>
</html>