angular.module 'myApp', ['ngMaterial']
.config [
  '$mdThemingProvider'
  ($mdThemingProvider) ->
    $mdThemingProvider
    .theme 'custom1Theme'
    .primaryPalette 'orange'
    .accentPalette 'blue'
    .warnPalette 'pink'
    $mdThemingProvider
    .theme  'custom2Theme'
    .primaryPalette 'green'
    .accentPalette 'lime'
    .warnPalette 'pink'
    .dark()
    $mdThemingProvider.alwaysWatchTheme true
]
