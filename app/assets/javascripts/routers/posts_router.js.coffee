class Poster.Routers.Posts extends Backbone.Router
	routes:
		'posts':'index'
		'':'index'
		'posts/new': 'new'
		'posts/:id/edit': 'edit'
		'posts/:id': 'show'

	initialize: ->
		@collection = new Poster.Collections.Posts()
		@collection.fetch({reset: true})
		

	index: ->
		view = new Poster.Views.PostsIndex(collection: @collection)
		$('#index_container').html(view.render().el)

	new: ->
		view = new Poster.Views.PostsNew(collection: @collection)
		$('#index_container').html(view.render().el)

	edit: (id) ->
		c = @collection
		c.fetch({
			success: ->
		        post = c.get(id)
        		view = new Poster.Views.PostsEdit(model: post)
        		$('#index_container').html(view.render().el)
			})

	show: (id) ->
		c = @collection
		c.fetch({
			success: ->
		        post = c.get(id)
        		view = new Poster.Views.PostsShow(model: post)
        		$('#index_container').html(view.render().el)
			})
