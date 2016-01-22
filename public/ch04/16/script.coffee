angular.module 'myApp', ['ngMaterial']
.config [
  '$mdIconProvider'
  ($mdIconProvider) ->
    $mdIconProvider.fontSet 'gi', 'glyphicon'
    $mdIconProvider.fontSet 'md', 'material-icons'
    $mdIconProvider.defaultFontSet 'glyphicon'
]
