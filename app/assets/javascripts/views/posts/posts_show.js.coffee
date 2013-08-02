class Poster.Views.PostsShow extends Backbone.View

  template: JST['posts/show']
  tagName: "li"

  render: ->
  	$(@el).html(@template(post: "SHOW PAGE"))
  	this