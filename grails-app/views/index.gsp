<!DOCTYPE html>
<html>
<head>
<title><g:message code="gsp.landing.title" defaul="Grails Template landing page" /></title>
<meta name="layout" content="main" />
<r:require modules="angular_app" />
</head>
<body>
	<div class="container-full" ng-app="dimlib" ng-controller="IndexCtrl">
		<div class="row jumbotron">
			<div class="col-md-2"></div>
			<div class="col-md-10">
				<h1><g:message code="gsp.landing.hero.title" default="Find the good size"/></h1>
				<p><g:message code="gsp.landing.hero.caption" /></p>
				<p>
				<form class="form-inline" role="form">
				  <div class="form-group col-md-6">
				    <input ng-focus="searchBoxFocus()" ng-model="selected" typeahead="(item.type.value + ': ' + item.brand.name + ' ' + item.name ) for item in items|filter:$viewValue|limitTo:8" type="text" class="form-control input-lg" id="userInput" placeholder="${message(code:'gsp.landing.hero.userinput.placeholder')}" />
				  </div>
				  <button type="submit" class="btn btn-primary btn-large btn-contrast input-lg" id="submit_location">Rechercher</button>
				</form>
				</p>
			</div>
		</div>
	</div>
</body>
</html>
