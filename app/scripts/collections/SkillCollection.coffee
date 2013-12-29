define [
	'backbone'
	# 'backbone_parse'
	'models/Skill'
	'backbone_localStorage'
], (Backbone, Skill) ->

	class SkillCollection extends Backbone.Collection

		localStorage: new Backbone.LocalStorage("skillco-skills")

		model: Skill

		# _parse_class_name: "Skill";

		url: ''

		