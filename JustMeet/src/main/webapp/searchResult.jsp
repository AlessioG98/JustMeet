<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">
<head>
<title>JUST MEET</title>
</head>
<body id="page-top">

	<%@include file="assets/header.html"%>
	<!-- Header -->
	<header class="masthead">
		<div class="container">
			<div class="intro-text" align="center" >
				<div class="form-group" align="center">
	<c:if test="${searchResults.size()==0}">
			<h4>Nessun evento trovato, riprova</h4>
		</c:if>
		<div class="form-group">
			<p></p>
			<h2 class="form-signin">Risultati della ricerca:</h2>
			<form:form method="POST" modelAttribute="searchResults"
				class="form-signin">
				<c:forEach var="event" items="${searchResults}">
					<div class="card">
						<div class="card-body" align="center">
							<h4 class="card-title">${event.titolo}</h4>
							<p class="card-text">${event.descrizione}</p>
							<p class="card-text">${event.categoria}</p>
							<p class="card-text">${event.dataEvento}</p>
							<a href="eventDetails?id=${event.id}"
								class="btn btn-lg btn-primary btn-block">Dettagli</a>
						</div>
					</div>
					<p></p>
				</c:forEach>
			</form:form>
  </div>
      </div>
			</div>
		</div>
	</header>
	
		<%@include file="assets/footer.html"%>
</body>
</html>