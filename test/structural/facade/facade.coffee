describe 'Facade', ->

  facade = null

  it 'should instantiate both implemenation classes', ->
    facade = new Facade()
    facade.request()
    expect(facade.s1).toBeDefined()
    expect(facade.s2).toBeDefined()
