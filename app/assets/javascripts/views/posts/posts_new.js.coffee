class Poster.Views.PostsNew extends Backbone.View

  template: JST['posts/new']
  tagName: "li"

  render: ->
  	$(@el).html(@template(post: "NEW PAGE"))
  	this