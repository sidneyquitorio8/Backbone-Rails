class Poster.Models.Post extends Backbone.Model

	getUser: ->
		$.ajax 'http://localhost:3000/api/users/show/:id',
    		type: 'GET'
    		dataType: 'json'
    		data: {id: 1},
    		success: (response) ->
        		console.log(response)