angular.module 'list', []
.controller 'ListController', [
  '$scope'
  ($scope) ->
    $scope.dives = [{
      site: "Abu Gotta Ramada"
      location: "Hurghada, Egypt"
      depth: 72
      time: 82
      avatar: 'turtle1.jpg'
    },{
      site: "Shark-Yolanda Reef"
      location: "Ras Mohamaed, Egypt"
      depth: 48
      time: 56
      avatar: 'reef.jpg'
    }]
    $scope.headers = [
      "Top dive sites"
      "Best diving buddies"
      "Longest dives"
    ]
]
angular.module 'myApp', ['ngMaterial', 'list']
