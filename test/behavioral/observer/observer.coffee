describe 'Observer', ->
  fred = taxMan = null

  beforeEach ->
    fred = new Employee 'Fred', 'Crane Operator', 30000.0
    taxMan = new TaxMan()
    spyOn(taxMan,'update')
    fred.addObserver taxMan

  it 'should notify watching observers', ->
    fred.setSalary 35000.0
    expect(taxMan.update).toHaveBeenCalled()

  it 'should not notify non-observers', ->
    fred.deleteObserver taxMan
    fred.setSalary 20000.0
    expect(taxMan.update).not.toHaveBeenCalled()
