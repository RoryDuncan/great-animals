// Generated by CoffeeScript 1.10.0
(function() {
  var adjectives, animals, crypto, defaults, extend, generateToken, getJSON, intRange,
    slice = [].slice;

  crypto = require('crypto');

  getJSON = require('jsonfile').readFileSync;

  adjectives = require('./adjectives.json');

  animals = {
    'basic': require('./animals.json'),
    'scientific': require('./scientific-animals.json')
  };

  generateToken = function(tokenLength) {
    var buffer;
    if (tokenLength == null) {
      tokenLength = 6;
    }
    if (tokenLength === 0) {
      return;
    }
    buffer = crypto.randomBytes(16);
    return buffer.toString('hex').slice(0, tokenLength);
  };

  intRange = function(ceiling, floor) {
    if (ceiling == null) {
      ceiling = 1;
    }
    if (floor == null) {
      floor = 0;
    }
    return floor + ~~(Math.random() * ceiling);
  };

  extend = function() {
    var base, extended, i, key, len, obj, objs;
    extended = arguments[0], objs = 2 <= arguments.length ? slice.call(arguments, 1) : [];
    if (objs.length === 0) {
      return extended || {};
    }
    for (i = 0, len = objs.length; i < len; i++) {
      obj = objs[i];
      base = obj;
      for (key in base) {
        extended[key] = base[key];
      }
    }
    return extended;
  };

  defaults = {
    'tokenLength': 6,
    'delimiter': '-',
    'names': 'basic'
  };

  module.exports = function(options) {
    var adjective, animal, group, items, result, token;
    if (options == null) {
      options = {};
    }
    items = [];
    options = extend(defaults, options);
    group = animals[options.names];
    animal = group[intRange(group.length)].replace(/[ -]+/g, options.delimiter);
    adjective = adjectives[intRange(adjectives.length)];
    token = generateToken(options.tokenLength);
    items.push(adjective);
    items.push(animal);
    if (options.tokenLength > 0) {
      items.push(token);
    }
    result = items.join(options.delimiter);
    result = result.replace(" ", options.delimiter);
    return result;
  };

}).call(this);
