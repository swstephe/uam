angular.module 'toast', []
.controller 'ToastController', [
  '$scope'
  '$mdToast'
  ($scope, $mdToast) ->
    $scope.toastVisible = false
    $scope.dismissAction = ''
    $scope.showToast = ->
      $scope.toastVisible = true
      toast = $mdToast.simple()
      .content "You have received a new mail!"
      .position 'top right'
      .hideDelay 5000
      $mdToast.show toast
      .then(
        (response) ->
          $scope.toastVisible = false
          $scope.dismissAction = 'Timeout'
        ,
        ->
          $scope.toastVisible = false
          $scope.dismissAction = "Dismiss button"
      )
    $scope.dismissToast = -> $mdToast.cancel()
]
angular.module 'myApp', ['ngMaterial', 'toast']
