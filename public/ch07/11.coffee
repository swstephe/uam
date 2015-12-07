app = angular.module 'dialog', []

class @BaseCtrl
  @register: (app, name) ->
    name ?= @name or @toString().match(/function\s*(.*?)\(/)?[1]
    app.controller name, @
  @inject: (args...) -> @$inject = args
  constructor: (args...) ->
    for key, index in @constructor.$inject
      @[key] = args[index]
    for key, fn of @constructor.prototype
      continue unless typeof fn is 'function'
      continue if key in ['constructor', 'initialize'] or key[0] is '_'
      @$scope[key] = fn.bind?(@) or _.bind(fn, @)
    @initialize?()

class ConfirmationDialog extends BaseCtrl
  @register app
  @inject '$scope', '$mdDialog'
  #closeWith: (answer) -> @$mdDialog.hide answer
  #cancel: -> @$mdDialog.cancel()

class DialogController extends BaseCtrl
  @register app
  @inject '$scope', '$mdDialog'
  #dive:
  #  site: "Abu Gotta Ramada"
  #  location: "Hurghada, Egypt"
  #  depth: 72
  #  time: 82
  #deleteStatus: "Dialog opened"
  #showConfirmation: (ev) =>
  #  parentPanel = angular.element(document.querySelector('#sourcePanel'))
  #  #dialog =
  #  #  templateUrl: "confirm-template.html"
  #  #  controller: ConfirmationDialog
  #  #  parent: parentPanel
  #  #  targetEvent: ev
  #  #  clickOutsideToClose: true
  #  #  locals:
  #  #    dive: @$scope.dive
  #  #  bindToController: true
  #  #  controllerAs: 'ctrl'
  #  #@$mdDialog.show dialog
  #  #.then(
  #  #  (decision) => @$scope.deleteStatus = decision
  #  #  => @$scope.deleteStatus = "Delete canceled"
  #  #)
