define [
	'backbone_marionette'
	'templates/Head'
], (Marionette, template) ->

	class HeadPageView extends Marionette.ItemView

		template: template

		initialize: ->
			@
