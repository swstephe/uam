angular.module 'gridlist', []
.controller 'GridListController', [
  '$scope'
  '$mdMedia'
  '$mdDialog'
  ($scope, $mdMedia, $mdDialog) ->
    $scope.pictures = [
      {title: "Crocodile fish",           src: '1.jpg'}
      {title: "Blue-spotted stingray",    src: '2.jpg'}
      {title: "Lionfish",                 src: '3.jpg'}
      {title: "Pufferfish",               src: '4.jpg'}
      {title: "Coral pods over the reef", src: '5.jpg'}
      {title: "Shaol of goatfish",        src: '6.jpg'}
      {title: "Crocodile fish",           src: '7.jpg'}
      {title: "Nudibranch",               src: '8.jpg'}
      {title: "Spotted pods",             src: '9.jpg'}
      {title: "Look into my eyes",        src: '10.jpg'}
      {title: "Triggerfish",              src: '11.jpg'}
      {title: "Napolean",                 src: '12.jpg'}
      {title: "Muray eel",                src: '13.jpg'}
      {title: "Shaol of coral pods",      src: '14.jpg'}
      {title: "Lionfish",                 src: '15.jpg'}
      {title: "Hawkfish",                 src: '16.jpg'}
    ]
    $scope.selectPicture = (picture, ev) ->
      parentPanel = angular.element(
        document.querySelector '#pictureList'
      )
      dialog = $mdDialog.alert()
      .parent parentPanel
      .targetEvent ev
      .clickOutsideToClose true
      .title "Free offer"
      .content "You can download '#{picture.title}' for free."
      .ariaLabel "Free offer"
      .ok "OK"
      $mdDialog.show dialog
      true

    $scope.hideFooter = -> $mdMedia 'sm'
]
