define [
	'backbone_marionette'
	'views/SkillListItemView'

], (Marionette, SkillListItemView) ->

	class SkillListView extends Marionette.CollectionView

		tagName: 'ul'
		itemView: SkillListItemView