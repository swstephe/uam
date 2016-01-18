angular.module 'toast', []
.controller 'ToastController', [
  '$scope'
  '$mdToast'
  ($scope, $mdToast) ->
    $scope.toastVisible = false
    $scope.dismissAction = ''
    actionName = "Got it!"

    $scope.showToast = ->
      $scope.toastVisible = true
      $scope.dismissAction = ''
      toast = $mdToast.simple()
      .content "You have received a new mail!"
      .position 'top right'
      .action actionName
      .hideDelay 5000

      $mdToast.show toast
      .then(
        (response) ->
          $scope.toastVisible = false
          $scope.dismissAction = \
            if response is 'ok' then actionName else 'Timeout'
        ,
        ->
          $scope.toastVisible = false
          $scope.dismissAction = "Dismiss button"
      )

    $scope.dismissToast = -> $mdToast.cancel()
]
