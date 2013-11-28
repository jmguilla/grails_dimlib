
<%@ page import="com.jmguilla.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-item" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list item">
			
				<g:if test="${itemInstance?.brand}">
				<li class="fieldcontain">
					<span id="brand-label" class="property-label"><g:message code="item.brand.label" default="Brand" /></span>
					
						<span class="property-value" aria-labelledby="brand-label"><g:link controller="brand" action="show" id="${itemInstance?.brand?.id}">${itemInstance?.brand?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="item.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:link controller="type" action="show" id="${itemInstance?.type?.id}">${itemInstance?.type?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="item.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${itemInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.asin}">
				<li class="fieldcontain">
					<span id="asin-label" class="property-label"><g:message code="item.asin.label" default="Asin" /></span>
					
						<span class="property-value" aria-labelledby="asin-label"><g:fieldValue bean="${itemInstance}" field="asin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.ean}">
				<li class="fieldcontain">
					<span id="ean-label" class="property-label"><g:message code="item.ean.label" default="Ean" /></span>
					
						<span class="property-value" aria-labelledby="ean-label"><g:fieldValue bean="${itemInstance}" field="ean"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.contributions}">
				<li class="fieldcontain">
					<span id="contributions-label" class="property-label"><g:message code="item.contributions.label" default="Contributions" /></span>
					
						<g:each in="${itemInstance.contributions}" var="c">
						<span class="property-value" aria-labelledby="contributions-label"><g:link controller="contribution" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.pointsOfMeasure}">
				<li class="fieldcontain">
					<span id="pointsOfMeasure-label" class="property-label"><g:message code="item.pointsOfMeasure.label" default="Points Of Measure" /></span>
					
						<g:each in="${itemInstance.pointsOfMeasure}" var="p">
						<span class="property-value" aria-labelledby="pointsOfMeasure-label"><g:link controller="pointOfMeasure" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.urls}">
				<li class="fieldcontain">
					<span id="urls-label" class="property-label"><g:message code="item.urls.label" default="Urls" /></span>
					
						<span class="property-value" aria-labelledby="urls-label"><g:fieldValue bean="${itemInstance}" field="urls"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:itemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${itemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
