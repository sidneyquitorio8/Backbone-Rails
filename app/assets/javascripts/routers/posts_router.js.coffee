class Poster.Routers.Posts extends Backbone.Router
	routes:
		'':'index'
		'posts/:id': 'show'

	initialize: ->
		@collection = new Poster.Collections.Posts()
		@collection.fetch({reset: true})
		

	index: ->
		view = new Poster.Views.PostsIndex(collection: @collection)
		$('#index_container').html(view.render().el)

	show: (id) ->
		alert "#{id}"
