angular.module 'list', []
.controller 'ListController', [
  '$scope'
  ($scope) ->
    $scope.settings = [
      {name: "Beep",          icon: "speaker_phone"}
      {name: "Deep alarm",    icon: "alarm"}
      {name: "Nitrox",        icon: "airplay"}
      {name: "Battery check", icon: "battery_alert"}
    ]
]
