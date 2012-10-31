Controller = require 'controllers/base/controller'
Issues = require 'models/issue_collection'
SidebarView = require 'views/sidebar_view'

module.exports = class SidebarController extends Controller

  initialize: ->
    new Issues().fetch
      success: (collection, response) ->
        @view = new SidebarView({collection})
      error: (collection, response) ->
        console.error 'error'