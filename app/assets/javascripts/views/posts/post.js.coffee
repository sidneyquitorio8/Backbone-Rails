class Poster.Views.Post extends Backbone.View

  template: JST['posts/post']
  tagName: "div class='post_div row'" 

  render: ->
  	$(@el).html(@template(post: @model))
  	this