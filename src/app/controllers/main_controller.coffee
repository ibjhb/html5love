class exports.MainController extends Backbone.Controller
  routes :
    "home": "home"
    "code": "code"

  initialize: ->
    @bind('all', @updateMenu)
  
  home: ->
    $('#content').html app.views.home.render().el

  code: ->
    $('#content').html app.views.code.render().el
  
  updateMenu: (route) ->
    $menu = $('#menu li')
    $menu.removeClass 'current-menu-item'
    $menu.find('.' + route.split(':')[1]).parent().addClass 'current-menu-item'
	@ 
