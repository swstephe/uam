angular.module 'chips', []
.controller 'ChipsController', [
  '$scope'
  ($scope) ->
    $scope.fishList = [
      {name: "Triggerfish", size: "big"}
      {name: "Stingray",    size: "medium"}
      {name: "Potato cod",  size: "tiny"}
    ]
    $scope.roFishList = angular.copy $scope.fishList
]
angular.module 'myApp', ['ngMaterial', 'chips']
