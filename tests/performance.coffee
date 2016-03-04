now = require('performance-now')
animals = require('../bin/index.js')
colors = require('colors')

console.log colors.bgGreen "\nPerformance Testing\n"

console.log "Measurements in milliseconds (ms)"
console.log colors.bold("\tMeasuring 10 sets of 1000 great-animal uuid's:\n")

results = for i in [1..10]
  
  start = now() 
  animals() for v in [1..1000]
  end = now()
  console.log colors.yellow("\tElapsed: ~#{(end - start).toFixed(3)} ms")
  (end - start)
  
  
total = results.reduce ((accum, value) -> accum += value), 0
average = total / results.length

console.log colors.bgGreen("\nResults:\n")
console.log "+\tTotal: #{total.toFixed(6)} ms"
console.log "+\tAverage (set of 1000): #{average.toFixed(6)} ms"
console.log "+\tAverage (single): #{(average / 1000 ).toFixed(6)} ms"