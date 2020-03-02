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
				<div class="form-group2" >
          <h2 class="form-signin">Eventi Partecipati: </h2>
					<c:if test="${ePartecipated.size()==0}">
	<h4 >Nessun Evento</h4>
	</c:if>
    <div class="form-group">
        <form:form method="GET" modelAttribute="ePartecipated" class="form-signin">
        <c:forEach var="event" items="${ePartecipated}">
 	<div class="card">
 	<div class="card-body">
		<h4 class="card-title"> ${event.titolo}</h4>
		<p class="card-text">${event.categoria}</p>
		<p class="card-text">${event.dataEvento}</p>
		<p class="card-text">${event.id}</p>
   		<a href="removeRequest?id=${event.id}" class="btn btn-lg btn-primary btn-block">Annulla Partecipazione</a>              
   		
       		
      
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