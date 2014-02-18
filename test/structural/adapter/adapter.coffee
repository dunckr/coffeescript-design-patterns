describe 'Adapter', ->

  array = null

  beforeEach ->
    array = -> ['a','b','c','d','e','f']

  it 'should randomise with the adapter', ->
    grid = new AwesomeGrid ['a','b','c','d','e','f']
    grid.setCustomSorter(new RandomSorterAdapter(new RandomSorter()))
    expect(grid.sort()).not.toEqual array()

  it 'should do nothing with the null sort', ->
    grid = new AwesomeGrid ['a','b','c','d','e','f']
    grid.setCustomSorter new NullSorter()
    expect(grid.sort()).toEqual array()

  it 'should reverse with the reverse sort', ->
    grid = new AwesomeGrid ['a','b','c','d','e','f']
    grid.setCustomSorter new ReverseSorter()
    expect(grid.sort()).toEqual array().reverse()

