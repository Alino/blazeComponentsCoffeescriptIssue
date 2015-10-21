if Meteor.isClient
  class hello extends BlazeComponent
    @register 'hello'
    template: ->
      'hello'

    onRendered: ->
      alert 'jebem ja tvojho boha'


  Session.setDefault 'counter', 0
  Template.hello.helpers counter: ->
    Session.get 'counter'

  Template.hello.events 'click button': ->
    # increment the counter when button is clicked
    Session.set 'counter', Session.get('counter') + 1

if Meteor.isServer
  Meteor.startup ->
    # code to run on server at startup
    return
