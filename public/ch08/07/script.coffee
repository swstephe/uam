angular.module 'list', []
.controller 'ListController', [
  '$scope'
  '$mdDialog'
  ($scope, $mdDialog) ->
    $scope.checklist = [
      {name: "Fins",        packed: false} 
      {name: "Mask",        packed: false}
      {name: "BCD jacket",  packed: false}
      {name: "Gloves",      packed: false}
      {name: "Tank",        packed: false}
      {name: "Weights",     packed: false}
      {name: "Knife",       packed: false}
    ]
    $scope.explain = (ev, item) ->
      dialog = $mdDialog.alert()
      .title "Explanation"
      .textContent "This is the explanation of #{item}."
      .ariaLabel "explanation"
      .ok "OK"
      .targetEvent ev
      $mdDialog.show dialog
]
angular.module 'myApp', ['ngMaterial', 'list']
