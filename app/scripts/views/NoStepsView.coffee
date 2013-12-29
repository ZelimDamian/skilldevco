define [
	'backbone_marionette'
	'templates/EmptyStepItem'
], (Marionette, template) ->

	class SkillView extends Marionette.ItemView
		template: template
		
