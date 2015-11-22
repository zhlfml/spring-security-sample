<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<c:url value="/" var="base" />
<link href="http://cdn.bootcss.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>tonr</title>
</head>
<body>
	<div class="container">
		<c:if test="${not empty param.authentication_error}">
			<h1>Woops!</h1>

			<p class="error">Your login attempt was not successful.</p>
		</c:if>
		<c:if test="${not empty param.authorization_error}">
			<h1>Woops!</h1>

			<p class="error">You are not permitted to access that resource.</p>
		</c:if>

		<form action="${base}login" method="post" role="form">
			<fieldset>
				<legend>
					<h2>Login</h2>
				</legend>
				<div class="form-group">
					<label for="username">Username:</label>
                    <input id="username" class="form-control" type='text' name='username'>
				</div>
				<div class="form-group">
					<label for="password">Password:</label>
                    <input id="password" class="form-control" type='text' name='password'>
				</div>
				<button class="btn btn-primary" type="submit">Login</button>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</fieldset>
		</form>

	</div>
</body>
</html>