angular
.module 'myApp', ['ngMaterial']
.config [
  '$mdThemingProvider'
  ($mdThemingProvider) ->
    $mdThemingProvider
    .theme 'default'
    .dark()
    .primaryPalette 'orange'
    .accentPalette 'brown'
    .warnPalette 'purple'
]
