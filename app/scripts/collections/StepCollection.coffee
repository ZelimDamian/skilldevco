define [
	'backbone'
	# 'backbone_parse'
	'models/Step'
	'backbone_localStorage'
], (Backbone, Step) ->

	class StepCollection extends Backbone.Collection

		localStorage: new Backbone.LocalStorage("skillco-steps")

		model: Step

		# _parse_class_name: "Skill";

		url: ''

		