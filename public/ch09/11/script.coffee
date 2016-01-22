angular.module 'toast', []
.controller 'ToastController', [
  '$scope'
  '$mdToast'
  '$timeout'
  ($scope, $mdToast, $timeout) ->
    $scope.toastVisible = false
    $scope.dismissAction = ''
    actionName = "Got it!"

    $scope.showToast = ->
      $scope.toastVisible = true
      $scope.dismissAction = ''
      toast = $mdToast.simple()
      .content "You have received a new mail! "
      .position 'top right'
      .action actionName
      .hideDelay 5000

      $mdToast.show toast
      .then(
        (response) ->
          if response is 'ok'
            $scope.dismissAction = actionName
            $scope.toastVisible = false
            abortNewMessage()
          else
            $scope.dismissAction = "New message"
        ,
        ->
          $scope.toastVisible = false
          $scope.dismissAction = "Dismiss button"
          abortNewMessage()
      )

      handler = $timeout(
        ->
          return unless handler
          toast = $mdToast.simple()
          .content "You have received another mail! "
          .position 'top right'
          .hideDelay 5000
          $mdToast.show toast
          .then(
            ->
              $scope.dismissAction = "Timeout"
              $scope.toastVisible = false
            ,
            ->
              $scope.dismissAction = "Dismiss button"
              $scope.toastVisible = false
          )
        ,
        2000
      )

      abortNewMessage = ->
        if handler
          $timeout.cancel handler
          handler = undefined

    $scope.dismissToast = -> $mdToast.cancel()
]
angular.module 'myApp', ['ngMaterial', 'toast']
