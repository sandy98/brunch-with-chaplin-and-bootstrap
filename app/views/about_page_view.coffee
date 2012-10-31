template = require 'views/templates/about'
PageView = require 'views/base/page_view'

module.exports = class AboutPageView extends PageView
  template: template
  container: '.hero-unit'
