describe 'Interpreter', ->
  calc = null

  beforeEach ->
    calc = new Interpreter()

  it 'should do addition', ->
    expect(calc.parseString('5 5 +')).toEqual 10

  it 'should do addition', ->
    expect(calc.parseString('5 12 +')).toEqual 17

  it 'should do addition', ->
    expect(calc.parseString('9 4 -')).toEqual 5
