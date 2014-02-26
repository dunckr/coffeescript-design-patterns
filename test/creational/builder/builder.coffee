describe 'Builder', ->

  it 'should build computers', ->
    builder = new ComputerBuilder()
    builder.memorySize 1000
    builder.turbo()
    comp1 = builder.computer
    comp2 = builder.computer
    expect(comp1).toEqual comp2

  it 'should set the memory size of computers', ->
    builder = new ComputerBuilder()
    builder.memorySize 1000
    comp1 = builder.computer
    expect(comp1.motherboard.memorySize).toEqual 1000

  it 'should set turb cpu on computers', ->
    builder = new ComputerBuilder()
    builder.turbo()
    comp1 = builder.computer
    expect(comp1.motherboard.cpu instanceof TurboCPU).toBe true

  it 'should set turb cpu on computers', ->
    builder = new ComputerBuilder()
    builder.turbo false
    comp1 = builder.computer
    expect(comp1.motherboard.cpu instanceof TurboCPU).toBe false
