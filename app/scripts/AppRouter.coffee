define [
  'backbone_marionette'
], (Marionette) ->

  class AppRouter extends Marionette.AppRouter

    appRoutes:
      '': 'root'
      'dashboard': 'dashboard'
      'profile': 'profile'
      'dashboard/domain/:id': 'dashboard'
      '*defaults': 'missing'
