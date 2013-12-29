define [
	'jquery'
	'backbone_marionette'
	'views/DomainView'
	'views/DomainListView'
	'views/PushMenuView'
	'models/Domain'
	'templates/DashboardLayout'
], ($, Marionette, DomainView, DomainListView, PushMenuView, Domain, template) ->

	class DashboardLayout extends PushMenuView

		initialize: (options) ->
			@domains = options.domains or options.get 'domains' or {}

		onRender: () ->
			@domainId = @domainId or @domains.first().get 'id'
			
			@menu.show new DomainListView
				collection : @domains
				domainId: @domainId
				
			@content.show new DomainView model: @domains.get( @domainId )
