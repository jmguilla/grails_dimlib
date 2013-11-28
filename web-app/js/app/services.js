'use strict';
/* Services */
angular.module('dimlibServices', ['ngResource']).
  factory('User', function($resource){
  return $resource('/dimlib/user/:actionId/:userId.json', {actionId: 'list', userId: '@id'}, {
  	me:{
  		method: 'GET',
  		params: {
  			actionId: 'me',
  			userId: ''
  		},
  		headers: {
  			'Content-Type': 'application/json',
  			'Accept': 'application/json'
  		}
  	},
	  save: {
		  method: 'POST',
		  params: {
			  actionId: 'update',
			  userId: ''
		  },
  		headers: {
  			'Content-Type': 'application/json',
  			'Accept': 'application/json'
  		}
	  }
  });
}).
factory('Item', function($resource){
  return $resource('/dimlib/item/:actionId/:itemId.json', {actionId: '', itemId: '@id'}, {
  });
});