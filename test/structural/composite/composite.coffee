describe 'Composite', ->

  it 'should be able to make a cake', ->
    make = new MakeCakeTask()
    expect(make.getTimeRequired()).toEqual 6
