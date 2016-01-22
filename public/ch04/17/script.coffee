angular.module 'myApp', ['ngMaterial']
.config [
  '$mdIconProvider'
  ($mdIconProvider) ->
    $mdIconProvider.iconSet 'my', '../icons/myIconSet.svg'
    $mdIconProvider.icon 'computer', '../icons/ic_computer_24px.svg'
    $mdIconProvider.defaultIconSet '../icons/myIconSet.svg', 24
]
