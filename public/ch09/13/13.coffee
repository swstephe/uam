angular
.module 'dives', []
.controller 'DiveLogController', [
  '$scope'
  ($scope) ->
    dives = [{
      site: "Abu Gotta Ramada"
      location: "Hurghada, Egypt"
      depth: 72
      time: 82
    },{
      site: "Ponte Mahoon"
      location: "MAehbourg, Mauritius"
      depth: 54
      time: 38
    },{
      site: "Molnar Cave"
      location: "Budapest, Hungary"
      depth: 98
      time: 62
    },{
      site: "Shark & Yolanda"
      location: "Ras Mohamed, Egypt"
      depth: 76
      time: 52
    }]
    longest = 0
    deepest = 0
    for dive, i in dives
      longest = i if dive.time > dives[longest].time
      deepest = i if dive.depth > dives[deepest].depth
    $scope.dives = dives
    $scope.longest = longest
    $scope.deepest = deepest

    $scope.displayAll = ->
      $scope.showLongest = false
      $scope.showDeepest = false

    $scope.displayLongest = ->
      $scope.showLongest = true
      $scope.showDeepest = false

    $scope.displayDeepest = ->
      $scope.showLongest = false
      $scope.showDeepest = true

    $scope.displayAll()
    true
]
