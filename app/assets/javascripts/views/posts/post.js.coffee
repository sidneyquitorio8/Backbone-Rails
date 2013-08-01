class Poster.Views.Post extends Backbone.View

  template: JST['posts/post']
  tagName: "li"

  render: ->
  	$(@el).html(@template(post: @model))
  	this