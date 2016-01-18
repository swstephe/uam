angular.module 'chips', []
.controller 'ChipsController', [
  '$scope'
  ($scope) ->
    $scope.fishList = [
      {name: "Triggerfish", size: "big"}
      {name: "Stingray",    size: "medium"}
      {name: "Potato cod",  size: "tiny"}
    ]
    $scope.newChip = (chip) ->
      name: chip
      size: '???'
]
