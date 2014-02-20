class Singleton

    @getInstance: -> @_instance ?= new @
    @_instance: null

class Unique extends Singleton

  constructor: -> @key = Math.random()
