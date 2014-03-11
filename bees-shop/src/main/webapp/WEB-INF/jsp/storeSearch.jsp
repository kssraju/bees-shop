<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ taglib prefix="store" tagdir="/WEB-INF/tags/store" %>

<store:filters category="${content}" />

<div class="categoryResults">

	<h1>Search Results</h1>
		
	<p class="element">
	<c:choose>
		<c:when test="${pagination.size > 0}">
			<fmt:message key="bees.storesearch.results${pagination.size == 1 ? '' : '.multiple'}">
				<fmt:param>${pagination.size}</fmt:param>
				<fmt:param>${param.keywords}</fmt:param>
			</fmt:message>
			<div class="pageProducts" id="updateContent">
				<store:category object="${content}" />
				<div id="overlay" class="overlay"></div>
			</div>
		</c:when>
		<c:when test="${!empty param.keywords}">
			<fmt:message key="bees.storesearch.no.results">
				<fmt:param>${param.keywords}</fmt:param>
			</fmt:message>
		</c:when>
		<c:otherwise>
			<fmt:message key="bees.storesearch.form" />
		</c:otherwise>
	</c:choose>
	</p>

	<form class="form advancedSearch" action="/search">

		<ol class="section">
			<li class="title"><fmt:message key="bees.storesearch.advanced.search" /></li>
			<li>
				<label class="label" for="keywords"><fmt:message key="bees.storesearch.keywords" /></label>
				<input class="input" name="keywords" value="${param.keywords}" id="keywords" type="text" />
			</li>	
			<li>
				<input class="button advance" type="submit" value="Search products" />
			</li>	
		</ol>
		
	</form>
</div>