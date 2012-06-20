Controller = require 'controllers/base/controller'
ContactPageView = require 'views/contact_page_view'

module.exports = class ContactController extends Controller
  historyURL: 'contact'

  index: ->
    console.debug 'contactcontroller#index'
    @view = new ContactPageView()
