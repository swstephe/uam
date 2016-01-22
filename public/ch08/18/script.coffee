angular.module 'virtualrepeat', []
.controller 'VirtualRepeatController', [
  '$scope'
  ($scope) ->
    $scope.axisItems = [0..10000]
    $scope.valueX = 0
    $scope.valueY = 0
    $scope.selectX = (value) -> $scope.valueX = value
    $scope.selectY = (value) -> $scope.valueY = value
]
angular.module 'myApp', ['ngMaterial', 'virtualrepeat']
