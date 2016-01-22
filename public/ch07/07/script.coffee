angular.module 'menu', []
.controller 'MenuController', [
  '$scope'
  ($scope) ->
    $scope.actionLog = []
    $scope.handle = ($event) ->
      $scope.actionLog.push
        id: $scope.actionLog.length
        entry: $event.target.innerText
    $scope.openMenu = (openMenuFn, eventArgs) ->
      openMenuFn eventArgs
      $scope.actionLog.push
        id: $scope.actionLog.length
        entry: "*** Menu opened"
]
angular.module 'myApp', ['ngMaterial', 'menu']
