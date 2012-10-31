Collection = require 'models/base/collection'
Issue = require 'models/issue'

module.exports = class IssueCollection extends Collection
  model: Issue
  url: 'https://api.github.com/repos/brunch/brunch/issues'