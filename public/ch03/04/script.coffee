angular
.module 'layout', []
.controller 'LayoutController', [
  '$mdMedia'
  '$scope'
  ($mdMedia, $scope) ->
    self = @
    self.title = "Simple Layout"
    self.sectionTitle = "Section #1"
    self.sectionBody = "This is a simple section."
    $scope.$watch(
      -> if $mdMedia('sm') then 'small' else 'large'
      (size) -> self.screenSize = size
    )
    true
]
angular.module 'myApp', ['ngMaterial','layout']
