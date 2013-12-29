define [
	'backbone_marionette'
	'templates/PushMenu'
], (Marionette, template) ->

	class PushMenuView extends Marionette.Layout

		template: template
		
		className: 'menu-layout-container smooth-030'

		events:
			'click .open-toggle': 'toggleMenu'
			'click .push-content-wrapper' : 'closeMenu'

		regions:
			'content': '.main-content'
			'menu': '.menu-content'

		ui:
			'menuWrapper' : '.push-menu-wrapper'
			'contentWrapper' : '.push-content-wrapper'

		open: false

		getTimeOut: () =>
			0.3

		toggleMenu: () =>
			if @open
				@closeMenu()
			else
				@openMenu()

		openMenu: () =>
			# @ui.contentWrapper.removeClass 'content-pushed-part'
			# @ui.contentWrapper.addClass 'content-pushed-full'

			# @ui.menuWrapper.addClass 'menu-open'

			@$el.addClass 'content-pushed-full'
			#@$el.removeClass 'content-pushed-part'

			@open = true

		closeMenu: (callback, args) =>
			# @ui.contentWrapper.addClass 'content-pushed-part'
			# @ui.contentWrapper.removeClass 'content-pushed-full'

			# @ui.menuWrapper.removeClass 'menu-open'

			# @$el.addClass 'content-pushed-part'
			@$el.removeClass 'content-pushed-full'

			@open = false

			if callback isnt undefined and _.isFunction callback
				setTimeout () ->
						callback(args)
					,
					@getTimeOut() * 1000