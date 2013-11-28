<div ng-cloak ng-repeat="alert in alerts"
	class="alert alert-{{alert.type}} alert-dismissable">
	<button ng-click="closeAlert($index)" type="button" class="close"
		data-dismiss="alert" aria-hidden="true">&times;</button>
	{{alert.content}}
</div>