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

<title>Dettagli Evento: </title>

      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
    <div class="form-group">
       
        <div>
		<h4 class="card-title">Titolo: ${eventDetail.titolo}</h4>
		</div>
		<div>
		<p class="card-text">Categoria: ${eventDetail.categoria}</p>
		</div>
		<p class="card-text">Data Evento: ${eventDetail.dataEvento}</p>
		<p class="card-text">${eventDetail.id}</p>       
   		<a href="addRequest?id=${eventDetail.id}" class="btn btn-lg btn-primary btn-block">Invia richiesta di partecipazione</a>              
       		
  </div>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>