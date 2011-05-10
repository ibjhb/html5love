class exports.MainController extends Backbone.Controller
  routes :
    "home": "home"
    "code": "code"

  home: ->
    $('#content').html app.views.home.render().el

  code: ->
    $('#content').html app.views.code.render().el
