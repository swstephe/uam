angular.module 'autocomplete', []
.controller 'SimpleFormController', [
  '$scope',
  ($scope) ->
    cities = [
      "Budapest"
      "Brussels"
      "Prague"
      "Bratislava"
      "Warsaw"
      "Berlin"
      "Bucharest"
      "Beograd"
      "Ljubjana"
      "Rome"
      "Zurich"
      "Amsterdam"
      "Madrid"
      "Paris"
      "London"
      "Luxemburg"
      "Lisbon"
      "Athens"
      "La Valetta"
      "Istanbul"
      "Moscow"
      "Oslo"
      "Stockholm"
      "Helsinki"
      "Rejkjavik"
      "Copenhagen"
    ]
    $scope.cities = cities.sort()
    $scope.getMatchingCities = (searchKey) ->
      return $scope.cities unless searchKey
      $scope.cities.filter (item) ->
        key = searchKey.toLowerCase()
        item.toLowerCase().indexOf(key) >= 0
]
angular.module 'myApp', ['ngMaterial', 'ngMessages', 'autocomplete']
