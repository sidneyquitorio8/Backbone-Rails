class Poster.Routers.Posts extends Backbone.Router
	routes:
		'posts':'index'
		'':'index'
		'posts/new': 'new'
		'posts/:id': 'show'

	initialize: ->
		@collection = new Poster.Collections.Posts()
		@collection.fetch({reset: true})
		

	index: ->
		view = new Poster.Views.PostsIndex(collection: @collection)
		$('#index_container').html(view.render().el)

	show: (id) ->
		view = new Poster.Views.PostsShow()
		$('#index_container').html(view.render().el)

	new: ->
		view = new Poster.Views.PostsNew()
		$('#index_container').html(view.render().el)
