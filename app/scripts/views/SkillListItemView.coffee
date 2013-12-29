define [
	'backbone_marionette'
	'templates/SkillListItem'
	
], (Marionette, template) ->

	class SkillListItemView extends Marionette.ItemView

		tagName: 'li'
		template: template