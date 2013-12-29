define [
	'backbone_marionette'
	'templates/StepItem'
], (Marionette, template) ->

	class SkillView extends Marionette.ItemView
		template: template
