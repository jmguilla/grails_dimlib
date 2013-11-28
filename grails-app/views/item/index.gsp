
<%@ page import="com.jmguilla.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<r:require modules="angular_app"/>
	</head>
	<body>
	<div class="row">
		<div class="col-md-12" ng-app="dimlib" ng-controller="ItemCtrl">
			<g:render template="/ng_alerts"/>
			<table class="table table-striped table-hover table-responsive" ng-cloak>
				<thead>
				<tr>
					<th><g:message code="item.brand.label" default="Brand" /></th>
					<th><g:message code="item.type.label" default="Type" /></th>
					<th><g:message code="item.name.label" default="Name"/></th>
					<th><g:message code="item.asin.label" default="Asin" /></th>
					<th><g:message code="item.ean.label" default="Ean" /></th>
				</tr>
			</thead>
			<tbody>
			<tr ng-repeat="item in items">
				<td>{{item.brand.name}}</td>
				<td>{{item.type.value}}</td>
				<td>{{item.name}}</td>
				<td>{{item.asin}}</td>
				<td>{{item.ean}}</td>
			</tr>
			</tbody>
			</table>
		</div>
	</div>
	</body>
</html>
