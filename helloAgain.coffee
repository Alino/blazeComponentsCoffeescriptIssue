if Meteor.isClient
  class helloAgain extends hello
    @register 'hello'
    template: ->
      'hello'

    onRendered: ->
      alert 'alaha vyjebaneho'
