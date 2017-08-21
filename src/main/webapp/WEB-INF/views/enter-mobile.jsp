<jsp:include page="common.jsp"></jsp:include>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta charset="utf-8">
<title>Enter Mobile</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

</head>

<body>
	<div class="main">
		<div class="top-logo">
			<img src="resources/assets/images/logo.png">
		</div>
		<div class="input-num">
			<p>Enter your mobile number</p>
			<form:form method="POST" action="validate-mobile.htm" modelAttribute="mobileForm">
				<form:input type="text" class="textfield" path="mobileNumber" placeholder="MOBILE NUMBER" /><br> 
				<input type="submit" name="submit" class="button" value="PROCEED" style="margin-top: 45px;" />
			</form:form>
		</div>

	</div>
</body>

</html>