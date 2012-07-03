Controller = require 'controllers/base/controller'
ContactPageView = require 'views/contact_page_view'

module.exports = class ContactController extends Controller
  historyURL: 'contact'

  show: ->
    console.log('contact#show')
    @view = new ContactPageView()