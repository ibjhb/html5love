template = {}
template.contenteditable = require('templates/contenteditable')
template.code = require('templates/code')

class exports.viewHandler extends Backbone.View
  id: 'jjj-view'

  render: (view) ->
    $(@.el).html template[view]
    @
