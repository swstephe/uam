angular.module 'menu', []
.controller 'MenuController', [
  '$scope'
  ($scope) ->
    $scope.lastAction = ''
    $scope.handle = ($event) ->
      $scope.lastAction = $event.target.innerText
]
