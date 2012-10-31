Controller = require 'controllers/base/controller'
mediator = require 'mediator'
Issues = require 'models/issue_collection'
SidebarView = require 'views/sidebar_view'

module.exports = class SidebarController extends Controller
  initialize: ->
    super
    @issues = new Issues()
    @issues.fetch
      success: (collection, response) ->
        console.log collection
        @view = new SidebarView({collection})
      error: (collection, response) ->
        console.error 'error'