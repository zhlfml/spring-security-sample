<%@ taglib prefix="authz"
	uri="http://www.springframework.org/security/tags"%>
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

		<h1>Hello <authz:authentication property="principal.username"/></h1>
		<h4><authz:authentication property="authorities"/></h4>
		<h4><authz:authentication property="credentials"/></h4>
		<h4>RemoteAddress: <authz:authentication property="details.remoteAddress"/></h4>

		<authz:authorize access="isAnonymous()">
			<p>
				<a href="<c:url value="login.jsp"/>">Login to Security Sample</a>
			</p>
		</authz:authorize>
		<authz:authorize access="isAuthenticated()">
			<p>
				<a href="<c:url value="/logout"/>">Logout</a>
			</p>
		</authz:authorize>

	</div>
</body>
</html>