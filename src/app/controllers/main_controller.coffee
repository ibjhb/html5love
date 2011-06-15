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
  
  updateMenu: (route, page) ->
    $menu = $('#menu li')
    $menu.removeClass 'current-menu-item'
    findclass = if _.isUndefined(page) then route.split(':')[1] else page
    $menu.find('.' + findclass).parent().addClass 'current-menu-item'
	@ 
