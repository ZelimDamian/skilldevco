define [
  'vendor/HamlHelpers',
  'underscore'
], (HAMLHtmlHelpers, _) ->

  TemplatesHelpers = {}

  _.extend TemplatesHelpers, HAMLHtmlHelpers

  # Add HAML helpers here available from templates
  _.extend TemplatesHelpers,

    # someHelper: ->
    #   'someValue'

  TemplatesHelpers
