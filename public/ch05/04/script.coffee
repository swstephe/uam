angular.module 'tabs', []
.controller 'TabsController', [
  '$scope'
  ($scope) ->
    $scope.activeTab = ''
    $scope.tabSelected = (tab) -> $scope.activeTab = tab
]
angular.module 'myApp', ['ngMaterial', 'tabs']
.config [
  '$mdThemingProvider'
  ($mdThemingProvider) ->
    $mdThemingProvider.theme 'default'
    .primaryPalette 'blue'
    .accentPalette 'orange'
]
