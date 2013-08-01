window.Poster =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
  	new Poster.Routers.Posts()
  	Backbone.history.start()

$(document).ready ->
  Poster.initialize()
