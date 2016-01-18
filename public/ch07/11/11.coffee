angular
.module 'dialog', []
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
      parentPanel = angular.element(document.querySelector('#sourcePanel'))
      dialog =
        templateUrl: "confirm-template.html"
        controller: [
          '$scope'
          '$mdDialog'
          'dive'
          ($scope, $mdDialog, dive) ->
            $scope.dive = dive
            $scope.closeWith = (answer) -> $mdDialog.hide answer
            $scope.cancel = -> $mdDialog.cancel()
        ]
        parent: parentPanel
        targetEvent: ev
        clickOutsideToClose: true
        locals:
          dive: $scope.dive
        bindToController: true
        controllerAs: 'ctrl'
      $mdDialog.show dialog
      .then(
        (decision) -> $scope.deleteStatus = decision
        -> $scope.deleteStatus = "Delete canceled"
      )
]
