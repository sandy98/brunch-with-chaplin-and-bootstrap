Controller = require 'controllers/base/controller'
Model = require 'models/issues'
View = require 'views/sidebar_view'

module.exports = class SidebarController extends Controller

  initialize: (options) ->
    @model = new Model()
    @view = new View({@model})
    @model.fetch # triggers a reset when ready, view will render
      error: (collection, xhr, options) ->
        console.error xhr