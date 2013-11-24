<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<%@ taglib prefix="util" uri="/WEB-INF/tags/beesden.tld" %>
<%@ taglib prefix="store" tagdir="/WEB-INF/tags/store" %>
<%@ taglib prefix="panel" tagdir="/WEB-INF/tags/panels" %>

<c:choose>
<c:when test="${content.status == 1}">

	<c:if test="${!empty content.heading}">
		<h1>${content.heading}</h1>
	</c:if>
	
	<c:if test="${!empty content.description}">
		<div class="element">${content.description}</div>
	</c:if>

	<div class="pageProducts" id="updateContent">
		<panel:category object="${category}" />
		<div id="overlay" class="overlay"></div>
	</div>

</c:when>

<c:otherwise>
	<h1><fmt:message key="bees.storecategory.not.available" /></h1>
	<p class="element"><fmt:message key="bees.storecategory.not.available.message" /></p>
	<p class="element"><a class="button return" href="${url.ref}"><fmt:message key="bees.storecategory.return" /></a></p>
</c:otherwise>
</c:choose>