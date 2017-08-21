<jsp:include page="common.jsp"></jsp:include>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta charset="utf-8">
<title>OTP</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

</head>

<body>
	<div class="main">
		<div class="top-logo">
			<img src="resources/assets/images/logo.png">
		</div>
		<div class="input-num">
			<p>Enter OTP sent to your mobile number</p>
			<p>
				if u don't receive the OTP in 15 minutes,<br>request for new OTP
				by clicking on
			</p>
		</div>
		<div class="resend-otp">
			<a href="#">RESEND CODE</a>
		</div>

		<div class="form">
			<form:form action="welcome-user.htm" method="POST" modelAttribute="otpForm" id="otpForm">
				<input type="text" class="input-class" maxlength="1"> 
				<input type="text" class="input-class" maxlength="1"> 
				<input type="text" class="input-class" maxlength="1"> 
				<input type="text" class="input-class" maxlength="1"> 
				<input type="text" class="input-class" maxlength="1"> 
				<input type="text" class="input-class" maxlength="1" onchange="submitForm()">
				
				<form:hidden path="otp" id="otpField"/>
				<input type="submit" hidden>
				
			</form:form>
		</div>


		<p>Enter 6 digit code</p>

	</div>
	<script type="text/javascript">
		
		$(".input-class").keyup(function() {
			if (this.value.length == this.maxLength) {
				var $next = $(this).next('.input-class');
				if ($next.length)
					$(this).next('.input-class').focus();
				else
					$(this).blur();
			}
		});
		
		function submitForm(){
			
			var values = $('.input-class').map(function() { console.log(this.value); return this.value; }).get().join('');
			
			document.getElementById("otpField").value = values;
			
			document.getElementById("otpForm").submit();
		}
		
	</script>
</body>

</html>