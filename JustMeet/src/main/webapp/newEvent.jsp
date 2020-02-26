
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
			<div class="intro-text">
				<div class="form-group">
					<form:form method="POST" modelAttribute="eventForm"
						class="form-signin">
						<h2 class="form-signin">Crea un nuovo evento</h2>
						<p></p>
						<p></p>
						<form:label path="titolo">Titolo</form:label>
						<spring:bind path="titolo">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="titolo" class="form-control"
									placeholder="Titolo" autofocus="true"></form:input>
							</div>
						</spring:bind>
						<form:label path="descrizione">Descrizione</form:label>
						<spring:bind path="descrizione">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="descrizione" class="form-control"
									placeholder="Descrizione" autofocus="true"></form:input>
							</div>
						</spring:bind>
						<form:label path="descrizione">Città</form:label>
						<spring:bind path="descrizione">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="citta" class="form-control"
									placeholder="Città" autofocus="true"></form:input>
							</div>
						</spring:bind>
						<form:label path="categoria">Categoria</form:label>
						<spring:bind path="categoria">
							<div class="form-group ${status.error ? 'has-error' : ''}">
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
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="date" path="dataEvento" class="form-control"
									placeholder="DataEvento" autofocus="true"></form:input>
							</div>
						</spring:bind>
						<form:label path="prezzo">Prezzo</form:label>
						<spring:bind path="prezzo">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="float" path="prezzo" class="form-control"
									placeholder="Prezzo" autofocus="true"></form:input>
							</div>
						</spring:bind>
						<form:label path="scadenzaPagamento">Data Scadenza Pagamento</form:label>
						<spring:bind path="scadenzaPagamento">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="date" path="scadenzaPagamento"
									class="form-control" placeholder="scadenzaPagamento"
									autofocus="true"></form:input>
							</div>
						</spring:bind>
						<form:label path="cauzione">Cauzione</form:label>
						<spring:bind path="cauzione">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="cauzione" class="form-control"
									placeholder="scadenzaPagamento" autofocus="true"></form:input>
							</div>
						</spring:bind>
						<button class="btn btn-lg btn-primary btn-block" type="submit">Invia</button>
					</form:form>
				</div>
			</div>
		</div>
	</header>
</body>
</html>