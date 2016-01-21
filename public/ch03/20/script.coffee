angular
.module 'layout', []
.controller 'LayoutController', [
  '$mdMedia'
  '$scope'
  ($mdMedia, $scope) ->
    self = @
    $scope.$watch ->
      switch
        when $mdMedia 'xs' then 'xsmall'
        when $mdMedia 'sm' then 'small'
        when $mdMedia 'md' then 'medium'
        when $mdMedia 'lg' then 'large'
        when $mdMedia 'xl' then 'xlarge'
        else 'unknown'
    , (size) -> self.screenSize = size
    true
]
angular.module 'myApp', ['ngMaterial', 'layout']
