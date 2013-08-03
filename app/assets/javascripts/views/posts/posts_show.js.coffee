class Poster.Views.PostsShow extends Backbone.View

  template: JST['posts/show']

  events:
  	'click .edit_button': 'goEdit'

  render: ->
  	$(@el).html(@template(post: @model))
  	this

  goEdit: ->
  	url = "/posts/" + @model.get('id') + "/edit"
  	Backbone.history.navigate(url, true)