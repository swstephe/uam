angular.module 'myApp', ['ngMaterial']
.config [
  '$mdThemingProvider'
  ($mdThemingProvider) ->
    $mdThemingProvider.theme 'default'
    .primaryPalette 'blue'
    .accentPalette 'orange'
]
