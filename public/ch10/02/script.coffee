angular.module 'divelog', []
.controller 'DiveLogController', [
  '$scope'
  ($scope) ->
    dives = [{
      site:       "Abu Gotta Ramada"
      location:   "Hurghada, Egypt"
      depth:      30
      time:       82
      tags:       ["shallow"]
    },{
      site: 'Small Giftun'
      location: 'Hurghada, Egypt'
      depth: 78
      time: 54
      tags: ["deep"]
    },{
      site: 'Fanous East'
      location: 'Hurghada, Egypt'
      depth: 38
      time: 55
      tags: ["shallow", "drift"]
    },{
      site: 'Umm Gamar'
      location: 'Hurghada, Egypt'
      depth: 102
      time: 48
      tags: ["deep", "wreck"]
    },{
      site: 'Paradise'
      location: 'Sharm El Sheikh, Egypt'
      depth: 34
      time: 62
      tags: ["shallow"]
    },{
      site: 'Near Garden'
      location: 'Sharm El Sheikh, Egypt'
      depth: 47
      time: 43
      tags: ["manta"]
    },{
      site: 'Far Garden'
      location: 'Sharm El Sheikh, Egypt'
      depth: 72
      time: 48
      tags: ["manta"]
    },{
      site: 'Shark & Yolanda Reef'
      location: 'Ras Mohamed, Egypt'
      depth: 49
      time: 57
      tags: ["drift", "wreck", "shark"]
    },{
      site: 'Dunraven'
      location: 'Ras Mohamed, Egypt'
      depth: 56
      time: 49
      tags: ["wreck"]
    },{
      site: 'Ponte Mahoon'
      location: 'Maehbourg, Mauritius'
      depth: 54
      time: 38
      tags: ["manta"]
    },{
      site: 'Shark Rock'
      location: 'Coco Beach, Mauritius'
      depth: 88
      time: 32
      tags: ["deep", "shark"]
    },{
      site: 'Urchin City'
      location: 'Coco Beach, Mauritius'
      depth: 39
      time: 58
      tags: ["shallow"]
    },{
      site: 'Molnar Cave'
      location: 'Budapest, Hungary'
      depth: 98
      time: 62
      tags: ["cave", "deep"]
    },{
      site: 'Ecsed Lake'
      location: 'Ecsed, Hungary'
      depth: 24
      time: 102
      tags: ["shallow", "lake"]
    },{
      site: 'Gyekenyes Lake'
      location: 'Ecsed, Hungary'
      depth: 31
      time: 44
      tags: ["shallow", "night", "lake"]
    }]
    $scope.dives = dives
    tags = {}
    for dive in dives
      continue unless dive and angular.isArray(dive.tags)
      for tag in dive.tags
        if tags[tag] then tags[tag]++ else tags[tag] = 1
    tagList = for tag of tags
      name: tag
      count: tags[tag]
      selected: false
    $scope.tags = tagList.sort (a,b) ->
        return -1 if a.name < b.name
        return 1 if a.name > b.name
        0
    $scope.toggleTag = (tag) -> tag.selected = not tag.selected
    $scope.getFilteredDives = ->
      filterTags = $scope.tags.filter (tag) -> tag.selected
      filteredDives = $scope.dives.filter (dive) ->
        filterTags.every (value) ->
          dive.tags.indexOf(value.name) >= 0
]
angular.module 'myApp', ['ngMaterial', 'divelog']
