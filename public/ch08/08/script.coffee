angular.module 'list', []
.controller 'ListController', [
  '$scope'
  '$mdDialog'
  ($scope, $mdDialog) ->
    $scope.travelInfo = [{
      title: "Travel"
      icon: "airplanemode_active"
      topics: [
        "Cyprus"
        "Egypt"
        "Mauritius"
      ]
    },{
      title: "Hotel"
      icon: "local_hotel"
      topics: [
        "Dive bungalows"
        "Tents"
        "Hostels"
        "Hotels"
      ]
    },{
      title: "Car rental"
      icon: "card_travel"
      topics: [
        "Small cars"
        "Family cars"
        "Vans"
      ]
    },{
      title: "Dive sites"
      icon: "library_books"
      topics: [
        "Shallow dives"
        "Wreck dives"
        "Night dives"
        "Cave dives"
      ]
    }]

    $scope.expandOrCollapse = (item) -> item.expanded = !item.expanded

    $scope.dividerBefore = (index) ->
      index > 0 and
      $scope.travelInfo[index].expanded and
      !$scope.travelInfo[index-1].expanded

    $scope.dividerAfter = (index) ->
      index < $scope.travelInfo.length - 1 and
      $scope.travelInfo[index].exanded

    $scope.displayTopic = (ev, item) ->
      dialog = $mdDialog.alert()
      .title "Topic info"
      .textContent 'Information about "#{item}".'
      .ariaLabel 'topic info'
      .ok "OK"
      .targetEvent ev
      $mdDialog.show dialog
]
angular.module 'myApp', ['ngMaterial', 'list']
