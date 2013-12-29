define [
	'backbone_marionette'
	'templates/Home'
], (Marionette, template) ->

	class HomePageView extends Marionette.ItemView

		template: template

		ui:
			wrap: '#homeWrap'

		initialize: ->
			@