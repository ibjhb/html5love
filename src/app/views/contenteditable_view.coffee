contentEditableTemplate = require('templates/contenteditable')

class exports.ContentEditableView extends Backbone.View
  id: 'code-view'

  render: ->
    $(@.el).html contentEditableTemplate()
    @
