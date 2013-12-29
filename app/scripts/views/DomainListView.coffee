define [
	'backbone_marionette'
	'views/DomainListItemView'

], (Marionette, DomainListItemView) ->

	class DomainListView extends Marionette.CollectionView

		tagName: 'ul'
		itemView: DomainListItemView

		initialize: (options)=>
			@domainId = options.domainId

		itemViewOptions : ()=> 
				domainId: @domainId


		events:
			'click a': 'linkClick'