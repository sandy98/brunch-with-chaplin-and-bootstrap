Controller = require 'controllers/base/controller'
Collection = require 'models/issue_collection'
PageView = require 'views/issue_page_view'

module.exports = class IssueController extends Controller
  historyURL: 'issue'

  show: (options) ->
    console.log 'issue#show', options
    new Collection().fetch
      data:
        id: options.id
      success: (collection, response) ->
        @view = new PageView(model: collection.get(options.id))
        @view.on 'addedToDOM', console.log('issue#show: ready')
      error: (collection, xhr, options) ->
        console.error xhr

