angular.module 'divesites', []
.controller 'DiveSitesController', [
  '$scope'
  ($scope) ->
    $scope.diveSites = [
      "Small Giftun"
      "Shaab El erg"
      "Abu Ramada"
      "Fanous North"
      "Fanadir"
      "Turtle Bay"
      "Erg Somaya"
      "Gotta Abu Ramada"
      "Um Gamar"
      "Bluff Point"
    ]
    true
]
angular.module 'myApp', ['ngMaterial', 'divesites']
.config [
  '$mdThemingProvider'
  ($mdThemingProvider) ->
    $mdThemingProvider.theme 'default'
    .primaryPalette 'blue'
    .accentPalette 'orange'
]
