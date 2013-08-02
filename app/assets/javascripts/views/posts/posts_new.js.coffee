class Poster.Views.PostsNew extends Backbone.View

  template: JST['posts/new']

  events:
  	'submit #new_post': 'createPost'

  render: ->
  	$(@el).html(@template(post: "NEW PAGE"))
  	this

  createPost: (event) ->
  	event.preventDefault(); if $('#new_post_title').val() == '' || $('#exampleInputPassword').val() == '' 
  		alert "Please fill out form"
  		$('#new_post_title').val("")
  		$('#exampleInputPassword').val("")
  	else @collection.create(title: $('#new_post_title').val(), message: $('#exampleInputPassword').val()); $('#new_post_title').val(""); $('#exampleInputPassword').val(""); Backbone.history.navigate("/posts", true)