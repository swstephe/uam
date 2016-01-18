angular.module 'chips', []
.controller 'ChipsController', [
  '$scope'
  ($scope) ->
    $scope.fishList = [
      "Triggerfish"
      "Stingray"
      "Potato cod"
    ]
    $scope.roFishList = angular.copy $scope.fishList
]
