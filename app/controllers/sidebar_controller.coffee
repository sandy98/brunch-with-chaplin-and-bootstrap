Controller = require 'controllers/base/controller'
Collection = require 'models/issue_collection'
View = require 'views/sidebar_view'

module.exports = class SidebarController extends Controller

  initialize: (options) ->
    new Collection().fetch
      success: (collection, response) ->
        @view = new View(collection: collection)
      error: (collection, xhr, options) ->
        console.error xhr