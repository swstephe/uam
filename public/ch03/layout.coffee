angular
.module 'layout', []
.controller 'LayoutController', [
  '$mdMedia'
  '$scope'
  class LayoutController
    title: "Simple Layout"
    sectionTitle: "Section #1"
    sectionBody: "This is a simple section."
    constructor: ($mdMedia, $scope) ->
      self = @
      $scope.$watch(
        -> if $mdMedia('sm') then 'small' else 'large'
        (size) -> self.screenSize = size
      )
]
