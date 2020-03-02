<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>Nuovo Evento</title>
</head>
<body>

	<%@include file="assets/header.html"%>
	<!-- Header -->
	<header class="masthead">
		<div class="container">
			<div class="intro-text" align="center">
				<div class="form-group2" >
					<form:form method="POST" modelAttribute="eventForm"
						class="form-signin">
						<h2 class="form-signin">Crea un nuovo evento</h2>
						<p></p>
						<p></p>
						<form:label path="titolo">Titolo</form:label>
						<spring:bind path="titolo">
							<div class="form-group2 ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="titolo" class="form-control"
									placeholder="Titolo" autofocus="true"></form:input>
							</div>
						</spring:bind>
						<form:label path="descrizione">Descrizione</form:label>
						<spring:bind path="descrizione">
							<div class="form-group2 ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="descrizione" class="form-control"
									placeholder="Descrizione" autofocus="true"></form:input>
							</div>
						</spring:bind>
						<form:label path="descrizione">Città</form:label>
						<spring:bind path="descrizione">
							<div class="form-group2 ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="citta" class="form-control"
									placeholder="Città" autofocus="true"></form:input>
							</div>
						</spring:bind>
						<form:label path="categoria">Categoria</form:label>
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
						<form:label path="dataEvento">Data Evento</form:label>
						<spring:bind path="dataEvento">
							<div class="form-group2 ${status.error ? 'has-error' : ''}">
								<form:input type="date" path="dataEvento" class="form-control" id="dataEvento"
									placeholder="DataEvento" autofocus="true"
									min ="" onchange="date(this.value)"></form:input>
							</div>
						</spring:bind>
						<form:label path="prezzo">Prezzo</form:label>
						<spring:bind path="prezzo">
							<div class="form-group2 ${status.error ? 'has-error' : ''}">
								<form:input type="number" step="0.01" min="0" value="0" path="prezzo" class="form-control" id="prezzo"
									placeholder="Prezzo" autofocus="true" onchange="price(this.value)"></form:input>
							</div>
						</spring:bind>
						<form:label path="scadenzaPagamento" id="lblScadenzaPagamento"
									style="visibility: hidden;">Data Scadenza Pagamento</form:label>
						<spring:bind path="scadenzaPagamento">
							<div class="form-group2 ${status.error ? 'has-error' : ''}">
								<form:input type="date" path="scadenzaPagamento" id="scadenzaPagamento"
									class="form-control" placeholder="scadenzaPagamento"
									min ="" max ="" autofocus="true"
									style="visibility: hidden;"></form:input>
							</div>
						</spring:bind>
						<form:label path="cauzione" id="lblCauzione"
									style="visibility: hidden;">Cauzione</form:label>
						<spring:bind path="cauzione">
							<div class="form-group2 ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="cauzione" class="form-control" id="cauzione"
									placeholder="scadenzaPagamento" autofocus="true"
									style="visibility: hidden;"></form:input>
							</div>
						</spring:bind>
						<button class="btn btn-lg btn-primary btn-block" type="submit">Invia</button>
					</form:form>
				</div>
			</div>
		</div>
	</header>
	<%@include file="assets/footer.html"%>
</body>
<script type="text/javascript">
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();
	if(dd<10){
		dd='0'+dd;
	} 
	if(mm<10){
		mm='0'+mm;
	}
	var today = yyyy+'-'+mm+'-'+dd;
	document.getElementById("dataEvento").setAttribute("min", today);
	document.getElementById("dataEvento").setAttribute("value", today);
	document.getElementById("scadenzaPagamento").setAttribute("min", today);
	document.getElementById("scadenzaPagamento").setAttribute("value", today);
	
	function date(date){
		document.getElementById("scadenzaPagamento").setAttribute("max",date);
	}

	function price(price){
		if(price > 0){
			document.getElementById("lblScadenzaPagamento").style.visibility = "visible";
			document.getElementById("scadenzaPagamento").style.visibility = "visible";
			document.getElementById("lblCauzione").style.visibility = "visible";
			document.getElementById("cauzione").style.visibility = "visible";
		}else{
			document.getElementById("lblScadenzaPagamento").style.visibility = "hidden";
			document.getElementById("scadenzaPagamento").style.visibility = "hidden";
			document.getElementById("lblCauzione").style.visibility = "hidden";
			document.getElementById("cauzione").style.visibility = "hidden";
		}
	}
</script>
</html>