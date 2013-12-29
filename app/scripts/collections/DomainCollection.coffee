define [
	'backbone'
	# 'backbone_parse'
	'models/Domain'
	'backbone_localStorage'
], (Backbone, Domain) ->

	class DomainCollection extends Backbone.Collection

		localStorage: new Backbone.LocalStorage("skillco-domains")

		model: Domain

		# _parse_class_name: "Domain";

		url: ''
