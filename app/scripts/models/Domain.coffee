define [
	'backbone'
	# 'backbone_parse'
	'collections/SkillCollection'
	'backbone_localStorage'
], (Backbone, SkillCollection) ->

	class Domain extends Backbone.Model

		localStorage: new Backbone.LocalStorage("skillco-domains")

		defaults:
			title: 'New skill domain'

		# _parse_class_name: "Domain";

		url: ''

		parse: (resp, options) =>
			@skills = new SkillCollection resp.skills
			return resp