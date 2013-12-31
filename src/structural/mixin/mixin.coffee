class Mixin
  @use: (mixins...) ->
    for mixin in mixins
      for key, value of mixin::
        @::[key] = value
    @

class Human
  hasMetal: no
  sayHello: -> 'Hello!'

class Robot
  isHuman: no
  sayHello: -> 'Greetings'

class Cyborg extends Mixin
  @use Human, Robot

  sayHello: -> 'Howdy!'
  hasFleshAndMetal: 'Hell Yeah!'
