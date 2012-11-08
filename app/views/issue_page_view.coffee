PageView = require 'views/base/page_view'

module.exports = class IssuePageView extends PageView
  template: require 'views/templates/issue'
  container: '.container'
  containerMethod: 'html'

  getTemplateData: ->
    model: @model?.toJSON()