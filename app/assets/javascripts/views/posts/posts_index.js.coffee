class Poster.Views.PostsIndex extends Backbone.View

  template: JST['posts/index']

  events:
  	'submit #new_post': 'createPost'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendEntry, this)

  render: ->
  	$(@el).html(@template())
  	@collection.each(@appendEntry)
  	this

  createPost: (event) ->
  	event.preventDefault()
  	if $('#new_post_title').val() == '' || $('#new_post_message').val() == '' 
  		alert "Please fill out form"
  	else @collection.create(title: $('#new_post_title').val(), message: $('#new_post_message').val())
  	$('#new_post')[0].reset()

  appendEntry: (post) ->
  	view = new Poster.Views.Post(model: post)
  	$('#posts_container').append(view.render().el)

  	