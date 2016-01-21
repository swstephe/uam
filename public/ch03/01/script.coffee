angular.module 'layout', []
.controller 'LayoutController', ->
  self = @
  self.title = "Simple Layout"
  self.sectionTitle = "Section #1"
  self.sectionBody = "This is a simple section."
angular.module 'myApp', ['ngMaterial', 'layout']
