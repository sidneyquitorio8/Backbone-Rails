class Poster.Views.PostsIndex extends Backbone.View

  template: JST['posts/index']

  events:
    'click .close': 'destroy'
    'click .edit_button': 'goEdit'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendEntry, this)

  render: ->
  	$(@el).html(@template())
  	@collection.each(@appendEntry)
  	this

  appendEntry: (post) ->
  	view = new Poster.Views.Post(model: post)
  	$('#posts_container').append(view.render().el)

  destroy: (event) ->
    id = $(event.currentTarget).data('job-id')
    model = @collection.get(id)
    model.destroy()

  goEdit: (event) ->
    id = $(event.currentTarget).data('job-id')
    url = "/posts/" + id + "/edit"
    Backbone.history.navigate(url, true)

  	