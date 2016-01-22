angular
.module 'myApp', ['ngMaterial']
.config [
  '$mdThemingProvider'
  ($mdThemingProvider) ->
    $mdThemingProvider
    .theme 'default'
    .primaryPalette 'orange'
    .accentPalette 'brown'
    .warnPalette 'purple'
]
