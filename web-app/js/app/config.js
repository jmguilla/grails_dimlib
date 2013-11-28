'use strict';
/* App config */
app.config(['$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {
		$routeProvider
		.when('/dimlib', {controller: 'IndexCtrl'})
	  .when('/dimlib/index', {controller: 'IndexCtrl'})
	  .when('/dimlib/item/', {controller: 'ItemCtrl'})
	  .when('/dimlib/item/index/', {controller: 'ItemCtrl'})
	  .when('/dimlib/item/listAll/:query', {controller: 'ItemCtrl'})
}]);
