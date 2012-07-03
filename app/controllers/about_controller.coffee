Controller = require 'controllers/base/controller'
AboutPageView = require 'views/about_page_view'

module.exports = class AboutController extends Controller
  historyURL: 'about'

  show: ->
    console.log('about#show')
    @view = new AboutPageView()
