class Singleton

    @_instance: null

    @getInstance: ->
      @_instance ?= new @


class Unique extends Singleton

  constructor: ->
    @key = Math.random()
