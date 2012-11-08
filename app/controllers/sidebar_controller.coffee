Controller = require 'controllers/base/controller'
Collection = require 'models/issue_collection'
View = require 'views/sidebar_view'

module.exports = class SidebarController extends Controller

  initialize: (options) ->
    collection = new Collection()
    @view = new View(collection: collection)
    collection.fetch # triggers a reset when ready, view will render
      error: (collection, xhr, options) ->
        console.error xhr