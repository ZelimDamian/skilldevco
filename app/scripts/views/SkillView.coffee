define [
	'backbone_marionette'
	'views/StepView'
	'views/NoStepsView'
	'collections/StepCollection'
	'models/Skill'
	'templates/SkillItem'
], (Marionette, StepView, NoStepsView, StepCollection, Skill, template) ->

	class SkillView extends Marionette.CompositeView
		template: template
		itemView: StepView
		emptyView: NoStepsView
		itemViewContainer: '.steps'
		className: "skill-view-wrapper col-xs-12 col-sm-6 col-md-4 col-lg-3"

		initialize: (options)->
			@collection = @model.steps or new StepCollection @model.get 'steps' if @model isnt undefined