
animal = require('../bin/index.js')
assert = require('./assert.js')

tests = [
  
  () ->
    # exists
    assert tests, animal().length > 0, "Animal should generate a non-empty string"
    
  , () ->
    # variance in output
    animals = for v in [0...10]
      animal()
    animals.sort().map (m , el) ->
      assert tests, m isnt el, "Animal should generate unique strings"
      return el
  , () ->
    # tokenLength option
    t = animal({tokenLength: 10}).split("-")
    assert tests, t[t.length - 1].length is 10, "options.tokenLength should adjust the token length"
  , () ->
    # delimiter option
    animal = animal({delimiter: "_"})
    assert tests, animal.indexOf "-" is -1 and animal.indexOf " " is -1,  "options.delimiter should change the delimiter"
]


# execute tests

console.time "Duration"

tests.forEach (test, n) ->
  test.call()
  
console.timeEnd "Duration"
console.log "Tests Complete."