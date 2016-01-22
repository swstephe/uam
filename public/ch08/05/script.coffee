angular.module 'list', []
.controller 'ListController', [
  '$scope'
  ($scope) ->
    $scope.checklist = [
      {name: "Fins", packed: false},
      {name: "Mask", packed: false},
      {name: "BCD jacket", packed: false},
      {name: "Gloves", packed: false},
      {name: "Tank", packed: false},
      {name: "Weights", packed: false},
      {name: "Knife", packed: false},
    ]
]
angular.module 'myApp', ['ngMaterial', 'list']
