<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<html>
<head>
<title>Just Meet</title>
</head>
<body>
<%@include file="assets/header.html"%>
	<!-- Header -->
	<header class="masthead">
		<div class="container">
			<div class="intro-text">
				<div class="intro-lead-in">Welcome Back!</div>
				<div class="intro-heading text-uppercase">It's Nice To See You
					Again!</div>
				<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
					href="#services">Start</a>
			</div>
		</div>
	</header>
<%@include file="assets/footer.html"%>
</body>

</html>
