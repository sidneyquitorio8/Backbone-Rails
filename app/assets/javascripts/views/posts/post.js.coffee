class Poster.Views.Post extends Backbone.View

  template: JST['posts/post']
  tagName: "div class='post_div row'" 

  initialize: ->
    # @collection.on('reset', @render, this)
    # @collection.on('add', @appendEntry, this)
    @listenTo(@model, 'change', @render);
    @listenTo(@model, 'destroy', @destroy);

  render: ->
  	@model.getUser()
  	$(@el).html(@template(post: @model))
  	this

  destroy: ->
  	@remove()
  	@unbind()
