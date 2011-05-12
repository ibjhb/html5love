class exports.MainController extends Backbone.Controller
  routes :
    "!/home": "home"
    "!/:page": "showPage"
	
  initialize: ->
    @bind('all', @updateMenu)
  
  home: ->
    $('#content').html app.views.home.render().el

  showPage: (route) ->
    $('#content').html app.views.viewHandler.render(route).el
    Cufon.refresh()
  
  updateMenu: (route) ->
    $menu = $('#menu li')
    $menu.removeClass 'current-menu-item'
    $menu.find('.' + route.split(':')[1]).parent().addClass 'current-menu-item'
	@ 
