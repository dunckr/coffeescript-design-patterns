class Subsystem1
  constructor: ->

class Subsystem2
  constructor: ->

class Facade

  request: ->
    @s1 = new Subsystem1()
    @s2 = new Subsystem2()
