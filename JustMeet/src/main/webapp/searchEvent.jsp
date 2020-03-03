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

<body>

	
	<%@include file="assets/header.html"%>
	<!-- Header -->
	<header class="masthead">
		<div class="container">
			<div class="intro-text" align="center">


				<div class="form-group2" align="center">
					<form:form method="POST" modelAttribute="searchForm"
						class="form-signin">
						<h2 class="form-signin">Cerca evento</h2>
						<label>Categoria</label>
						<spring:bind path="categoria">
							<div class="form-group2 ${status.error ? 'has-error' : ''}">
								<form:select type="integer" path="categoria"
									class="form-control" placeholder="Categoria" autofocus="true">
									<optgroup label="SPORT">
										<option value="CALCIO">CALCIO</option>
										<option value="CALCETTO">CALCETTO</option>
										<option value="PALLAVOLO">PALLAVOLO</option>
										<option value="TENNIS">TENNIS</option>
										<option value="BEACH_VOLLEY">BEACH VOLLEY</option>
									</optgroup>
									<optgroup label="SERVIZI">
										<option value="RIPETIZIONI">RIPETIZIONI</option>
										<option value="GIOCHI_DA_TAVOLO">GIOCHI DA TAVOLO</option>
									</optgroup>
								</form:select>
							</div>
						</spring:bind>
						<label>Data Evento</label>
						<spring:bind path="dataEvento">
							<div class="form-group2 ${status.error ? 'has-error' : ''}">
								<form:input type="date" path="dataEvento" class="form-control"
									placeholder="DataEvento" autofocus="true"></form:input>
							</div>
						</spring:bind>

						<button class="btn btn-lg btn-primary btn-block" type="submit">Cerca</button>
					</form:form>
						<form:form method="POST" modelAttribute="showAllEvent"
								class="form-signin">
									<c:forEach var="event" items="${showAllEvent}">
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
				</c:forEach>
								</form:form>
				
				</div>

			</div>
		</div>
	</header>
	
	<%@include file="assets/footer.html"%>
	
</body>
</html>