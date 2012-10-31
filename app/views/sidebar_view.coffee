mediator = require 'mediator'
View = require 'views/base/view'
template = require 'views/templates/sidebar'

module.exports = class SidebarView extends View
  template: template
  container: '.sidebar-nav'
  autoRender: true

  initialize: ->
    super