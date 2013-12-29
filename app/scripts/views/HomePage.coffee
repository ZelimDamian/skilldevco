define [
	'backbone_marionette'
	'templates/Home'
], (Marionette, template) ->

	class HomePageView extends Marionette.ItemView

		template: template

		ui:
			main: '.mainContent'
			left: '.leftMenu'

		initialize: ->
			@

		toggleMenu: ->
			@ui.left.toggleClass 'col-xs-3'
			@ui.left.toggleClass 'col-xs-1'
			@ui.main.toggleClass 'col-xs-9'
			@ui.main.toggleClass 'col-xs-11'


		events:
			'click .toggle-menu-button' : 'toggleMenu'