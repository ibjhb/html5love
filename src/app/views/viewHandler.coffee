template = {}
template.code = require('templates/code')
template.cache = require('templates/cache')
template.contenteditable = require('templates/contenteditable')


class exports.viewHandler extends Backbone.View
  id: 'jjj-view'

  render: (view) ->
    $el = $(@.el)
    $el.remove
    $el.html template[view]
    $el.attr('id', view + '-view')
    @
