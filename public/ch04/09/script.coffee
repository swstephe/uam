angular
.module 'myApp', ['ngMaterial']
.config [
  '$mdThemingProvider'
  ($mdThemingProvider) ->
    $mdThemingProvider
    .theme 'default'
    .primaryPalette 'indigo',
      default: '400'
      'hue-1': '200'
      'hue-2': 'A100'
      'hue-3': 'A400'
    .dark()
]
