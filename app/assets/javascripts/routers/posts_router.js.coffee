class Poster.Routers.Posts extends Backbone.Router
	routes:
		'':'index'
		'posts/:id': 'show'

	index: ->
		view = new Poster.Views.PostsIndex()
		$('#index_container').html(view.render().el)

	show: (id) ->
		alert "#{id}"
