#global require

"use strict"

require.config

  paths:
    App: "App"
    AppDeps: "config/AppDeps"
    jquery: "../components/jquery/jquery"
    backbone: "../components/backbone/backbone"
    underscore: "../components/underscore/underscore"
    bootstrap: "../components/sass-bootstrap/dist/js/bootstrap"
    backbone_marionette: "../components/backbone.marionette/lib/backbone.marionette"
    backbone_localStorage: "../components/backbone.localStorage/backbone.localStorage"
    backbone_parse: "../components/backbone-parse-master/backbone-parse"

  shim:

    jquery:
      exports: '$'

    underscore:
      exports: "_"

    backbone:
      exports: "Backbone"
      deps: [
        "underscore"
        "jquery"
      ]

    backbone_parse:
      deps: [
        "backbone"
      ]

    backbone_marionette:
      exports: "Backbone.Marionette"
      deps: ["backbone"]

    bootstrap:
      exports: "jquery"
      deps: ["jquery"]

    app:
      deps: [ 'AppDeps' ]

require ["App", "jquery", "AppDeps"], (app, $) ->
  $ ->
    window.app = app
    app.start()
