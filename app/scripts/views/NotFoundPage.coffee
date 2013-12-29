define [
	'backbone_marionette'
	'templates/NotFound'
], (Marionette, template) ->

	class NotFoundView extends Marionette.ItemView
		
		template: template