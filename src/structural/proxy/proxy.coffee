Customers = ['Duncan', 'Rachel']

class BankAccount
  constructor: (@balance=0) ->
  withdraw: (amount) -> @balance -= amount
  deposit: (amount) -> @balance += amount

class AccountProxy

  constructor: (@startBalance=0,@owner) ->

  withdraw: (amount) ->
    @checkAccess()
    s = @getSubject()
    s.withdraw amount

  deposit: (amount) ->
    @checkAccess()
    s = @getSubject()
    s.deposit amount

  balance: ->
    @checkAccess()
    s = @getSubject()
    s.balance

  getSubject: ->
    @subject ?= new BankAccount @startBalance

  checkAccess: ->
    throw new Error 'Wrong user' unless @owner in Customers
