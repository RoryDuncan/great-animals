require('colors')

test = 0
errors = 0

assert = (tests, statement, msg) ->
  
  test++
  
  # alignments and stuff
  n = test+""
  m = tests.length+""
  if n.length is 1
    n = test+" "
  if m.length is 1
    m = tests.length+" "
  
  # our stuff
  pre = "test #{n} of #{m}"
  
  if statement
    console.log "+ PASSED\t".green, "#{pre}".yellow
  else 
    errors++
    console.log "- FAILED\t".underline.red, "#{pre}"
    console.warn msg

module.exports = assert