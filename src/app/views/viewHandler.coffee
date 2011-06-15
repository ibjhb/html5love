template = {}
template.code = require('templates/code')
template.cache = require('templates/cache')
template.contenteditable = require('templates/contenteditable')
template.dataset = require('templates/dataset')
template.dragdrop = require('templates/dragdrop')
template.forms = require('templates/forms')
template.geolocation = require('templates/geolocation')
template.localstorage = require('templates/localstorage')
template.modernizr = require('templates/modernizr')
template.notification = require('templates/notification')
template.video = require('templates/video')
template.webfonts = require('templates/webfonts')
template.about = require('templates/about')
template.contact = require('templates/contact')

class exports.viewHandler extends Backbone.View
  id: 'base-view'

  render: (view) ->
    $el = $(@.el)
    $el.remove
    $el.html template[view]
    $el.attr('id', view + '-view')
    @
