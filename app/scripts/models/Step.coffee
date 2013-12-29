define [
	'backbone'
	# 'backbone_parse'
	'backbone_localStorage'
], (Backbone) ->

	class Step extends Backbone.Model

		localStorage: new Backbone.LocalStorage("skillco-steps")

		defaults:
			title: 'New step'
			done: false

		# _parse_class_name: "Domain";

		url: ''
