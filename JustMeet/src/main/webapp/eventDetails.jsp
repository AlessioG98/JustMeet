<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<title>JUST MEET</title>
</head>
<body id="page-top">

	<%@include file="assets/header.html"%>
	<!-- Header -->
	<header class="masthead">
		<div class="container">
			<div class="intro-text" align="center">
				<div class="form-group2" align="center">
					<h4 class="card-title">Titolo: ${eventDetail.titolo}</h4>
					<div>
						<p class="card-text">Categoria: ${eventDetail.categoria}</p>
					</div>
					<p class="card-text">Data Evento: ${eventDetail.dataEvento}</p>
					<p class="card-text">Numero Partecipanti: ${countPartecipated}</p>
					<p class="card-text">${eventDetail.id}</p>
					<a href="addRequest?id=${eventDetail.id}"
						class="btn btn-lg btn-primary btn-block">Invia richiesta di
						partecipazione</a>
				</div>

			</div>
		</div>

	</header>
	<%@include file="assets/footer.html"%>

</body>
</html>