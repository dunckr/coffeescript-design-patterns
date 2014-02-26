describe 'DSL', ->

  it 'should start at 0', ->
    dsl = new DSL()
    expect(dsl.count).toEqual 0

  it 'should be able to add single line', ->
    dsl = new DSL 'add 1'
    expect(dsl.count).toEqual 1

  it 'should be able to add multiple lines', ->
    dsl = new DSL """
    add 1
    add 2
    add 3
    """
    expect(dsl.count).toEqual 6

  it 'should be able to add multiple arguments per line', ->
    dsl = new DSL """
    add 1 2 3
    add 2 4 5
    add 3 6 7
    """
    expect(dsl.count).toEqual 33
