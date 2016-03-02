

crypto = require('crypto')
getJSON = require('jsonfile').readFileSync

# data
adjectives = require('./adjectives.json')
animals =
  'basic': require('./animals.json'),
  'scientific': require('./scientific-animals.json')

# helpers
generateToken = (tokenLength = 6) ->
  return if tokenLength is 0
  buffer = crypto.randomBytes(16)
  return buffer.toString('hex').slice(0, tokenLength)

intRange = (ceiling = 1, floor = 0) ->
  return floor + ~~(Math.random()*ceiling)

extend = (extended, objs...) ->
  return extended or {} if objs.length is 0
  for obj in objs
    base = obj
    for key of base
      extended[key] = base[key]
  return extended

# default options

defaults = 
  'tokenLength': 6,
  'delimiter': '-',
  'names': 'basic'

module.exports = (options = {}) ->
  
  items = []
  options = extend defaults, options
  group = animals[options.names]
  animal = group[intRange(group.length)]
  .replace(/ /g, options.delimiter)
  .replace(/-/g, options.delimiter)
  adjective = adjectives[intRange(adjectives.length)]
  token = generateToken(options.tokenLength)
  
  items.push adjective
  items.push animal
  if options.tokenLength > 0
    items.push token
  
  result = items.join(options.delimiter)
  result = result.replace(" ", options.delimiter)
  return result