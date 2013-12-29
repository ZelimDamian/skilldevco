'use strict'

define [
	'backbone'
	'backbone_marionette'
	'templates'
	'Vent'
	'AppController'
	'AppRouter'
	'models/Domain'
	'collections/DomainCollection'
	'models/Skill'
	'collections/SkillCollection'
	'models/Step'
	'collections/StepCollection'
	'AppDeps'
], (Backbone, Marionette, Templates, vent, AppController, AppRouter, Domain, DomainCollection, Skill, SkillCollection, Step, StepCollection) ->

	Marionette.Renderer.render = (template, data) ->
		if typeof template is 'string' and typeof Templates[template] is 'function'
			Templates[template](data)
		else if typeof template is 'function'
			template(data)
		else
			console.log '[marionette] template is not found:', template

	app = new Marionette.Application()

	app.domains = new DomainCollection

	app.domains.fetch()
		# success: (collection) ->
		# 	console.log collection

	if app.domains.length < 4

		app.domains.add new Domain
			title: 'Domain numer ' + app.domains.length
			skills: new SkillCollection [
				new Skill
					title: 'New skill 1'
				new Skill
					title: 'Old skill 2'
			]

		app.domains.add new Domain
			title: 'Domain numer ' + app.domains.length
			icon: 'rocket'
			skills: new SkillCollection [
				new Skill
					title: 'New skill 1'
				new Skill
					title: 'Old skill 2'
					steps: new StepCollection [
						new Step
							title: 'Accomplish something!'
					]
			]

		app.domains.add new Domain
			title: 'Domain numer ' + app.domains.length
			icon: 'flag'
			skills: new SkillCollection [
				new Skill
					title: 'New skill 1'
				new Skill
					title: 'Old skill 2'
					steps: new StepCollection [
						new Step
							title: 'Accomplish something!'
					]
			]

			# title: 'Second domain'
		app.domains.each (domain)->
			domain.save()


	app.addRegions 
		content: '#main'
		header: 'header'
		footer: 'footer'

	app.vent = vent

	app.templates = Templates

	app.on "initialize:before", (options) =>

	app.on "initialize:after", (options) =>
		Backbone.history.start
			pushState: false
			root: '/'

	app.addInitializer ->
		app.appController = new AppController app: app
		app.appRouter = new AppRouter controller: app.appController

	app
