angular.module 'dialog', []
.controller 'DialogController', [
  '$scope'
  '$mdDialog'
  ($scope, $mdDialog) ->
    $scope.showAlert = (ev) ->
      parentPanel = angular.element document.querySelector '#sourcePanel'
      dialog = $mdDialog.alert()
      .parent parentPanel
      .targetEvent ev
      .clickOutsideToClose true
      .title "Your battery level is low."
      .textContent "Now, your battery has a critically low capacity, 8%."
      .ariaLabel "Battery level is low"
      .ok "OK"
      $mdDialog.show dialog
]
angular.module 'myApp', ['ngMaterial', 'dialog']
