describe 'Metaprogramming', ->
  meta = null

  beforeEach ->
    meta = new Meta()

  it 'should define one', ->
    expect(meta.getOne()).toEqual 1

  it 'should define two', ->
    expect(meta.getTwo()).toEqual 2

  it 'should define three', ->
    expect(meta.getThree()).toEqual 3

  it 'should not define four', ->
    expect(-> meta.getFour()).toThrow()
