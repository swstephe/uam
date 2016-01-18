angular.module 'virtualrepeat', []
.controller 'VirtualRepeatController', [
  '$scope'
  ($scope) ->
    $scope.axisObjects =
      getLength: -> 10000
      getItemAtIndex: (i) -> i
    $scope.valueX = 0
    $scope.valueY = 0
    $scope.selectX = (value) -> $scope.valueX = value
    $scope.selectY = (value) -> $scope.valueY = value
    true
]
