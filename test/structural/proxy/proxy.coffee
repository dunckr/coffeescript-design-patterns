describe 'Proxy', ->

  account = null

  describe 'when a customer', ->

    beforeEach ->
      account = new AccountProxy 100, 'Duncan'

    it 'should be able to see balance', ->
      expect(account.balance()).toEqual 100

    it 'should be able to withdraw funds', ->
      account.withdraw 200
      expect(account.balance()).toEqual -100

    it 'should be able to deposit funds', ->
      account.deposit 500
      expect(account.balance()).toEqual 600

  describe 'when not a customer', ->

    beforeEach ->
      account = new AccountProxy 100, 'Bob'

    it 'should not be able to see balance', ->
      expect(-> account.balance()).toThrow(new Error('Wrong user'))

    it 'should not be able to withdraw funds', ->
      expect(-> account.withdraw(200)).toThrow(new Error('Wrong user'))

    it 'should not be able to deposit funds', ->
      expect(-> account.deposit(500)).toThrow(new Error('Wrong user'))
