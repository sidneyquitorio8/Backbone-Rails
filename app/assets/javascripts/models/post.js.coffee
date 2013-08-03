class Poster.Models.Post extends Backbone.Model

	getUser: ->
		$.ajax '/api/users/show/:id',
    		type: 'GET'
    		dataType: 'json'
    		data: {id: 1},
    		success: (response) ->
    			response = JSON.parse response
    			alert "Hey"
    		complete: (response, textStatus) ->