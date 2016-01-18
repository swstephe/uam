angular.module 'dialog', []
.controller 'DialogController', [
  '$scope'
  '$mdDialog'
  ($scope, $mdDialog) ->
    $scope.dive =
      site: "Abu Gotta Ramada"
      location: "Hurghada, Egypt"
      depth: 72
      time: 82
    $scope.showConfirmation = (ev) ->
      $scope.deleteStatus = "Dialog opened"
      parentPanel = angular.element document.querySelector '#sourcePanel'
      dialog = $mdDialog.confirm()
      .parent parentPanel
      .targetEvent ev
      .clickOutsideToClose true
      .title "Delete dive log entry"
      .textContent "Are you sure, you really want to delete this dive log entry?"
      .ariaLabel "Delete log entry"
      .ok "Delete"
      .cancel "Leave it"
      $mdDialog.show dialog
      .then(
        -> $scope.deleteStatus = "Deleted"
        -> $scope.deleteStatus = "Delete canceled"
      )
]
