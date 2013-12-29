define [
	'backbone_marionette'
	'templates/DomainListItem'
], (Marionette, template) ->

	class DomainListItemView extends Marionette.ItemView

		tagName: 'li'
		template: template

		initialize: (options)->
			@domainId = options.domainId

		templateHelpers: ()=>
			selectedId: ()=>
				@domainId