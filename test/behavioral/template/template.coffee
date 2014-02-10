describe 'Template', ->
  report = null

  beforeEach ->
    report = new Report()

  it 'should contain title in report output', ->
    expect(report.outputReport()).toContain 'MonthlyReport'

  it 'should contain text in report output', ->
    expect(report.outputReport()).toContain ['Things are going', 'Really well']
