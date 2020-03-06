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
			<div class="intro-text">
				<div class="form-group row">
					<div class="col-12 col-5">
						
					<h2 class="form-signin col-12" style="padding:5%;">Risultati della ricerca:</h2>
					<c:if test="${searchResults.size()==0}">
						<h4 class="col-12">Nessun evento trovato, riprova</h4>
							
					</div>
					</c:if>
				</div>
					<form:form method="POST" modelAttribute="searchResults"
						class="form-signin row" style="place-content: center;">
						<c:forEach var="event" items="${searchResults}">
							<div class="card col-11 col-5">
								<div class="card-body">
									<h4 class="card-title">${event.titolo}</h4>
									<p class="card-text">${event.descrizione}</p>
									<p class="card-text">${event.categoria}</p>
									<p class="card-text">${event.dataEvento}</p>
									<a href="eventDetails?id=${event.id}"
										class="btn btn-lg btn-primary btn-block">Dettagli</a>
									</div>
								</div>
								
							
								<div class="col-1"></div>
						</c:forEach>
					</form:form>
      			</div>
			</div>
		</div>
	</header>
	
		<%@include file="assets/footer.html"%>
</body>
</html>