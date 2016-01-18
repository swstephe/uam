angular.module 'toast', []
.controller 'ToastController', [
  '$scope'
  '$mdToast'
  '$interval'
  ($scope, $mdToast, $interval) ->
    $scope.toastVisible = false
    $scope.dismissAction = ''
    $scope.mailsReceived = 0
    actionName = "Got it!"

    $scope.showToast = ->
      $scope.toastVisible = true
      $scope.dismissAction = ''
      $scope.mailsReceived = 1
      toast = $mdToast.simple()
      .content "You have received a new mail! "
      .position 'top right'
      .action actionName
      .hideDelay 5000

      $mdToast.show toast
      .then acceptShow, rejectShow

      handler = $interval(
        ->
          $scope.mailsReceived++
          $mdToast.updateContent \
            "You have #{$scope.mailsReceived} new emails!"
        ,
        800
      )

    $scope.dismissToast = -> $mdToast.cancel()
    acceptShow = (response) ->
      $scope.toastVisible = false
      $scope.dismissAction = if response is 'ok'
          "#{actionName} (#{$scope.mailsReceived})"
        else
          "Timeout"
      closeInterval()

    rejectShow = ->
      $scope.toastVisible = false
      $scope.dismissAction = "Dismiss button"
      closeInterval()

    closeInterval = ->
      if handler
        $interval.cancel handler
        handler = undefined
]
