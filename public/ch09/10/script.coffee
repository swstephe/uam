angular.module 'toast', []
.controller 'ToastController', [
  '$scope'
  '$mdToast'
  ($scope, $mdToast) ->
    $scope.toastVisible = false
    $scope.dismissAction = ''

    $scope.showToast = ->
      $scope.toastVisible = true
      toast =
        controller: 'ToastController'
        templateUrl: 'newmail-template.html'
        position: 'top right'
        hideDelay: 5000

      $mdToast.show toast
      .then(
        (response) ->
          $scope.toastVisible = false
          $scope.dismissAction = response? or 'Timeout'
        ,
        ->
          $scope.toastVisible = false
          $scope.dismissAction = "Dismiss button"
      )

    $scope.dismissToast = -> $mdToast.cancel()
    $scope.toastAction = (action) -> $mdToast.hide action
]
angular.module 'myApp', ['ngMaterial', 'toast']
