angular.module 'autocomplete', []
.controller 'SimpleFormController', [
  '$scope'
  '$q'
  '$timeout'
  ($scope, $q, $timeout) ->
    cities = [
      {name: "Budapest", hotels: 100, restaurants: 431}
      {name: "Brussels", hotels: 100, restaurants: 431}
      {name: "Prague", hotels: 100, restaurants: 431}
      {name: "Bratislava", hotels: 100, restaurants: 431}
      {name: "Warsaw", hotels: 100, restaurants: 431}
      {name: "Berlin", hotels: 100, restaurants: 431}
      {name: "Bucharest", hotels: 100, restaurants: 431}
      {name: "Beograd", hotels: 100, restaurants: 431}
      {name: "Ljubjana", hotels: 100, restaurants: 431}
      {name: "Rome", hotels: 100, restaurants: 431}
      {name: "Zurich", hotels: 100, restaurants: 431}
      {name: "Amsterdam", hotels: 100, restaurants: 431}
      {name: "Madrid", hotels: 100, restaurants: 431}
      {name: "Paris", hotels: 100, restaurants: 431}
      {name: "London", hotels: 100, restaurants: 431}
      {name: "Luxemburg", hotels: 100, restaurants: 431}
      {name: "Lisbon", hotels: 100, restaurants: 431}
      {name: "Athens", hotels: 100, restaurants: 431}
      {name: "La Valetta", hotels: 100, restaurants: 431}
      {name: "Istanbul", hotels: 100, restaurants: 431}
      {name: "Moscow", hotels: 100, restaurants: 431}
      {name: "Oslo", hotels: 100, restaurants: 431}
      {name: "Stockholm", hotels: 100, restaurants: 431}
      {name: "Helsinki", hotels: 100, restaurants: 431}
      {name: "Rejkjavik", hotels: 100, restaurants: 431}
      {name: "Copenhagen", hotels: 100, restaurants: 431}
    ]
    $scope.cities = cities.sort (a,b) ->
      if a.name > b.name then 1 else if a.name < b.name then -1 else 0

    $scope.getMatchingCities = (searchKey) ->
      deferred = $q.defer()
      $timeout(->
        result = $scope.cities
        if searchKey
          result = $scope.cities.filter (item)->
            key = searchKey.toLowerCase()
            item.name.toLowerCase().indexOf(key) >= 0
        deferred.resolve result
      , 3000)
      deferred.promise
]
