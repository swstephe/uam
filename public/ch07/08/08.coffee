angular.module 'dialog', []
.controller 'DialogController', [
  '$scope'
  '$mdDialog'
  ($scope, $mdDialog) ->
    $scope.showAlert = ->
      dialog = $mdDialog.alert()
      .title "Your battery level is low."
      .textContent "Now, your battery has a critically low capacity, 8%."
      .ariaLabel "Battery level is low"
      .ok "OK"
      $mdDialog.show dialog
]
