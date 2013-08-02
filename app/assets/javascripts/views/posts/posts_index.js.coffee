class Poster.Views.PostsIndex extends Backbone.View

  template: JST['posts/index']

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendEntry, this)

  render: ->
  	$(@el).html(@template())
  	@collection.each(@appendEntry)
  	this

  appendEntry: (post) ->
  	view = new Poster.Views.Post(model: post)
  	$('#posts_container').append(view.render().el)

  	