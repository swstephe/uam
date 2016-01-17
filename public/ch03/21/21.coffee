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
    , (size) ->
      self.screenSize = size
      $scope.__layout =
        screen: size
        paddingStyle: getPaddingStyle()
        itemSize: getItemSize()
    getPaddingStyle = ->
      switch self.screenSize
        when 'small' then 'smallPadding'
        else 'normalPadding'
    getItemSize = ->
      switch self.screenSize
        when 'small' then 50
        when 'medium' then 33
        else 25
    true
]
angular
.module 'cities', []
.controller 'CitiesController', [
  '$scope'
  ($scope) ->
    $scope.cities = [
      "Brussels"
      "Budapest"
      "Oslo"
      "New York"
      "Rome"
      "Seattle"
    ]
]
