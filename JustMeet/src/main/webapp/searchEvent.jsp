
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<link href="css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
	crossorigin="anonymous"></script>

<title>CERCA</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
	<%@include file="assets/header.html"%>

	<div class="form-group">
		<form:form method="POST" modelAttribute="searchForm"
			class="form-signin">
			<h2 class="form-signin">Cerca evento</h2>
			<label>Categoria</label>
			<spring:bind path="categoria">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:select type="integer" path="categoria" class="form-control"
						placeholder="Categoria" autofocus="true">
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
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="date" path="dataEvento" class="form-control"
						placeholder="DataEvento" autofocus="true"></form:input>
				</div>
			</spring:bind>

			<button class="btn btn-lg btn-primary btn-block" type="submit">Cerca</button>
	
	</form:form>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
	<%@include file="assets/footer.html"%>

	</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/datatables-demo.js"></script>
</body>
</html>