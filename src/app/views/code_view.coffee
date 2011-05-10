codeTemplate = require('templates/code')

class exports.CodeView extends Backbone.View
  id: 'code-view'

  render: ->
    $(@.el).html codeTemplate()
    @
