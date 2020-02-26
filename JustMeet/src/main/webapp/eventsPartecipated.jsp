<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"
  xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8" />
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<title>Risultati della ricerca: </title>

      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
	<c:if test="${modifyEvent.size()==0}">
	<h4 >Nessun Evento</h4>
	</c:if>
    <div class="form-group">
        <form:form method="GET" modelAttribute="modifyEvent" class="form-signin">
        <c:forEach var="event" items="${modifyEvent}">
    <h2 class="form-signin">Eventi Partecipati: </h2>
 	<div class="card">
 	<div class="card-body">
		<h4 class="card-title"> ${event.titolo}</h4>
		<p class="card-text">${event.categoria}</p>
		<p class="card-text">${event.dataEvento}</p>
		<p class="card-text">${event.id}</p>
   		<a href="modifyEvents" class="btn btn-lg btn-primary btn-block">Modifica Evento</a>              
   		
       		
      
  </div>
  </div>
  </c:forEach>
  </form:form>
  </div>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>