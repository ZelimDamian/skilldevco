define [
	'backbone_marionette'
	'templates/SkillItem'
], (Marionette, template) ->

	class SkillItemView extends Marionette.ItemView
		template: template