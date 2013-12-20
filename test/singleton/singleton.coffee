describe 'Singleton', ->
  one = two = null

  beforeEach ->
    one = Unique.getInstance()
    two = Unique.getInstance()

  describe 'has only one instance', ->

    it 'should have same random key', ->
      expect(one.key).toEqual two.key
