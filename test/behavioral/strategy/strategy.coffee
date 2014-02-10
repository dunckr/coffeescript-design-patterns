describe 'Strategy', ->

  report = null

  beforeEach ->
    htmlFormatter = new HTMLFormatter()
    report = new StrategyReport htmlFormatter

  it 'should have html formatter', ->
    expect(report.outputReport()).toContain 'html'
    expect(report.outputReport()).not.toContain '****'

  it 'should have plain text formmatter', ->
    plainTextFormatter = new PlainTextFormatter()
    report.formatter = plainTextFormatter
    expect(report.outputReport()).not.toContain 'html'
    expect(report.outputReport()).toContain '****'
