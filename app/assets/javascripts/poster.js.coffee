window.Poster =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
  	new Poster.Routers.Posts()
  	Backbone.history.start(pushState: true)

$(document).ready ->
  Poster.initialize()
