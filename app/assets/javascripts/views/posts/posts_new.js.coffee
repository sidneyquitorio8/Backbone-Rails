class Poster.Views.PostsNew extends Backbone.View

  template: JST['posts/new']

  render: ->
  	$(@el).html(@template(post: "NEW PAGE"))
  	this