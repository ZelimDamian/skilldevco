define [
	'backbone'
	'collections/StepCollection'
	'backbone_localStorage'
	# 'backbone_parse'
], (Backbone, StepCollection) ->

	class Skill extends Backbone.Model

		defaults:
			title: 'New skill item'
			progress: 0

		#_parse_class_name: "Skill";

		url: ''

		localStorage: new Backbone.LocalStorage("skillco-skills")

		initialize: ()=>
			@set 'progress', @progress()

		progress: ()=>
			@initializeSteps()
			
			return 100 if @steps.length is 0

			done = @steps.filter (step)->
				step.get 'done'
			done.length / @steps.length * 100

		initializeSteps: (steps)=>
			@steps = new StepCollection (steps || @get 'steps')

		parse: (resp, options) =>
			@initializeSteps(resp.steps)
			return resp