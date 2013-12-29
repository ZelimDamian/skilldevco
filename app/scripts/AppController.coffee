define [
  'backbone_marionette'
  'views/HomePage'
  'views/HeadPage'
  'views/NotFoundPage'
  'views/DashboardPage'
  'views/ProfileView'
  'views/DomainView'
], (Marionette, HomePageView, HeadPageView, NotFoundView, DashboardView, ProfileView, DomainView) ->

  class AppController extends Marionette.Controller

    constructor: (options) ->
        @app = app if options isnt undefined

    root: ->
      console.log '[navigate] root'
      @app.header.show new HeadPageView
      @app.content.show new HomePageView

    missing: ->
      console.log '[navigate] missing'
      @app.header.show new HeadPageView
      @app.content.show new NotFoundView

    dashboard: (domainId)->
      console.log '[navigate] dashboard'
      if @app.header.currentView isnt undefined then @app.header.currentView.close()

      if @app.dashboard isnt undefined
        @app.dashboard.closeMenu(@showDashboard, domainId)
      else
        @showDashboard(domainId)

    showDashboard: (domainId)->
      @app.dashboard = new DashboardView
        domains : @app.domains

      @app.dashboard.domainId = domainId

      @app.content.show @app.dashboard

    profile: ->
      console.log '[navigate] profile'
      @app.content.show new ProfileView

    domain: (id)->
      console.log '[navigate] domain'
      @app.header.show new HeadPageView
      @app.content.show new DomainView model: @app.domains.at id