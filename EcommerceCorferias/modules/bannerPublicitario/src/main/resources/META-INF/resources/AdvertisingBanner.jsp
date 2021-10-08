<%@ include file="/init.jsp"%>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="nomb-ape text-color-red font-w register-title">Ingresa los datos del banner publicitario</div>
		<section class="box-register box-register-banner">
		
		<% 
			String x = renderRequest.getContextPath() +"/img/la.jpg";
			String xx = renderRequest.getContextPath() +"/img/chicago.jpg";
			String xxx = renderRequest.getContextPath() +"/img/ny.jpg";
			String imagenes [] = {x, xx, xxx};
			request.setAttribute("img", imagenes); 
		%>
	
<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active index-long">
    <% if(request.getAttribute("imagenes") != null) { %>
		<c:forEach var="imagen" items="${img}">
			<img class="box-register-banner" src="${imagen}" width="1800" height="200">
		</c:forEach>
	<% }%>
    </div>  
    <!-- div class="carousel-item active">
      <img class="box-register-banner" src="<=renderRequest.getContextPath()%>/img/la.jpg" alt="Los Angeles" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img class="box-register-banner" src="<=renderRequest.getContextPath()%>/img/chicago.jpg" alt="Chicago" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img class="box-register-banner" src="<=renderRequest.getContextPath()%>/img/ny.jpg" alt="New York" width="1100" height="500">
    </div-->
  </div>
</div>

</section>
		<%@include file="/validateForm.jsp"%>
