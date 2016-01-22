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
    $scope.getSiteInfo = (index) -> "Item ##{i}" for i in [1..index]
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
