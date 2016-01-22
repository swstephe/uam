angular.module 'input', []
.controller 'SimpleFormController', [
  '$scope'
  ($scope) ->
    $scope.registeredUser = {}
    $scope.register = (user) -> $scope.registeredUser = user
]
angular.module 'myApp', ['ngMaterial', 'ngMessages', 'input']
