'use strict';
/* Controllers */
app.controller('UserCtrl', function($scope, User) {
 	$scope.user = User.me(); 
  $scope.alerts = []
  $scope.update = function(){
  	$scope.user.$save({},
  	function(value, responseHeaders){
  		$scope.alerts.push({type: value.type, content: value.message});
  		$scope.user = User.me();
  		$scope.submitDisabled = false;
  	},
  	function(response){
  		$scope.alerts.push({type: response.data.type, content: response.data.message});
  		$scope.user = User.me();
  		$scope.submitDisabled = false;
  	});
  };
  $scope.closeAlert = function(index) {
  	$scope.alerts.splice(index, 1);
  };
});

app.controller('IndexCtrl', function($scope, Item){
	$scope.selected = undefined
	$scope.items = []
	$scope.alerts = []
	$scope.searchBoxFocus = function(){
		Item.query({actionId: 'findByType', type: 'shoes'},
				function(value, responseHeaders){
					$scope.items = $scope.items.concat(value);
					return $scope.items;
				},
				function(httpResponse){
					$scope.alerts.push({type: httpResponse.data.type, content: httpResponse.data.message});
				});
				Item.query({actionId: 'findByType', type: 'helmet'},
						function(value, responseHeaders){
							$scope.items = $scope.items.concat(value);
							return $scope.items;
						},
						function(httpResponse){
							$scope.alerts.push({type: httpResponse.data.type, content: httpResponse.data.message});
						});
				Item.query({actionId: 'findByType', type: 'gloves'},
						function(value, responseHeaders){
							$scope.items = $scope.items.concat(value);
							return $scope.items;
						},
						function(httpResponse){
							$scope.alerts.push({type: httpResponse.data.type, content: httpResponse.data.message});
						});
	}
});

app.controller('ItemCtrl', function($scope, Item){
	$scope.items = []
	$scope.alerts = []
	Item.query({actionId: 'findByType', type: 'shoes'},
	function(value, responseHeaders){
		$scope.items = $scope.items.concat(value);
	},
	function(httpResponse){
		$scope.alerts.push({type: httpResponse.data.type, content: httpResponse.data.message});
	});
	Item.query({actionId: 'findByType', type: 'helmet'},
			function(value, responseHeaders){
				$scope.items = $scope.items.concat(value);
			},
			function(httpResponse){
				$scope.alerts.push({type: httpResponse.data.type, content: httpResponse.data.message});
			});
	Item.query({actionId: 'findByType', type: 'gloves'},
			function(value, responseHeaders){
				$scope.items = $scope.items.concat(value);
			},
			function(httpResponse){
				$scope.alerts.push({type: httpResponse.data.type, content: httpResponse.data.message});
			});
});
//UserCtrl.$inject = ['$scope', 'User'];
