describe 'Mixin', ->
  vader = null

  beforeEach ->
    vader = new Cyborg()

  it 'should not have metal', ->
    expect(vader.hasMetal).toBe false

  it 'should not be human', ->
    expect(vader.isHuman).toBe false

  it 'should have flesh and metal', ->
    expect(vader.hasFleshAndMetal).toEqual 'Hell Yeah!'

  it 'should say hello', ->
    expect(vader.sayHello()).toEqual 'Howdy!'
