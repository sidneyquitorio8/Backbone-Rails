class Poster.Views.PostsIndex extends Backbone.View

  template: JST['posts/index']

  render: ->
  	$(@el).html(@template(post: "Dynamic!!"))
  	this
