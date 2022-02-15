<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">
div.box {
	width: 500px;
	position:absolute;
    left:45%;
    top:30%;
    margin-left:-150px;
    margin-top:-150px;
	}

.error_next_box {
    margin-top: 9px;
    font-size: 12px;
    color: red;    
    display: none;
}


</style>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>

	<form method="post" name="signup" action="signin.do">
		<input type="hidden" name="role" value="USER">
		 <div class="box">
		 <span>	<h2>Create Your Account</h2> </span> 
		 
		 <span> ID </span>
		<div>
			<input type="text" name="mid" id="memberId"> <span></span>
			<span class="error_next_box"></span>
		</div>
		<font name="checkId" size="2"></font> 

		<span> Username </span>
		<div>
			<input class="" type="text" name="name" id="memberName">
			<span class="focus-input100"></span> <span class="error_next_box"></span>
		</div>

		<span> Password </span>
		<div data-validate="Password is required">
			<span class=""> </span> <input class="" type="password"
				name="password" id="memberPw"> <span class="focus-input100"></span>
			<span class="error_next_box"></span>
		</div>

		<span> Password check </span>
		<div class="" data-validate="Password is required">
			<span class=""> </span> <input class="input100" type="password"
				name="memberPwCheck" id="memberPwCheck"> <span
				class="focus-input100"></span>

		</div>
		<font name="check" size="2"></font>

		<br>
		<br>
		<div>
			<input style="float: right;" type="submit" value="회원가입">
			<a href="index.jsp" class="button">처음화면으로</a>
		</div>
		</div>
		<br>
	</form>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="js/signup.js"></script>
	<script src="js/passwordCk.js"></script>
</body>
</html>