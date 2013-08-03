class Poster.Views.PostsEdit extends Backbone.View

  template: JST['posts/edit']

  events:
  	'submit #edit_post': 'editPost'

  render: ->
  	$(@el).html(@template(post: @model))
  	this

  editPost: ->
  	if $('#new_post_title').val() == '' || $('#exampleInputPassword').val() == '' 
  		alert "Please fill out form"
  		$('#new_post_title').val("")
  		$('#exampleInputPassword').val("")
  	else @model.set('title': $('#new_post_title').val()); @model.set('message': $('#exampleInputPassword').val()); @model.save(); $('#new_post_title').val(""); $('#exampleInputPassword').val(""); Backbone.history.navigate("/posts", true)