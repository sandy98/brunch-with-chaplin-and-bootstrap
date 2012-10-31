Controller = require 'controllers/base/controller'
FooterView = require 'views/footer_view'

module.exports = class FooterController extends Controller
  initialize: ->
    super
    @view = new FooterView()
