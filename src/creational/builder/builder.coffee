class Computer
  constructor: (@display='crt',@motherboard=new Motherboard()) ->

class CPU
class BasicCPU extends CPU
class TurboCPU extends CPU

class Motherboard
  constructor: (@cpu=new BasicCPU(), @memorySize=1000) ->

class ComputerBuilder
  constructor: ->
    @computer = new Computer()

  turbo: (hasTurboCPU=true) ->
    @computer.motherboard.cpu = if hasTurboCPU then new TurboCPU() else new BasicCPU()

  memorySize: (sizeInMB) ->
    @computer.motherboard.memorySize = sizeInMB
