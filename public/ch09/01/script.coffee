angular.module 'progress', []
.controller 'ProgressController', [
  '$scope'
  '$interval'
  ($scope, $interval) ->
    handler = null
    $scope.isStarted = false
    $scope.currentValue = 0

    $scope.start = ->
      handler = $interval(
        ->
          $scope.currentValue += 2
          $scope.currentValue = 0 if $scope.currentValue > 100
        ,
        100
      )
      $scope.isStarted = true

    $scope.stop = ->
      $interval.cancel handler if $scope.isStarted
      $scope.isStarted = false

    $scope.set = (value) ->
      $scope.stop()
      $scope.currentValue = value

    $scope.start()
]
angular.module 'myApp', ['ngMaterial', 'progress']
