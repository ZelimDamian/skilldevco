define [
	'backbone_marionette'
	'views/SkillView'
	'templates/DomainItem'
], (Marionette, SkillView, template) ->

	class DomainView extends Marionette.CompositeView

		template: template
		itemView: SkillView
		itemViewContainer: '.skills'
		
		initialize: (options)->
			@collection = @model.skills or @model.get 'skills' if @model isnt undefined