
program = require 'commander'
pkg = require '../package.json'
animals = require './index.js'

program
.version(pkg.version)
.option("-c  --count", "the number of animal uuids to generate.")
.option("-t  --tokenlength", "The length of the token generated. Pass 0 to not have a token.")
.parse(process.argv);

options = {};

if program.tokenlength
  options.tokenLength = Math.min(48, Math.max(0, program.tokenlength))
  
if program.count
  program.count = Math.max(program.count, 0)
  
  for i in [0...program.count]
    process.stdout.write(animals(options) + "\n")
    
else console.log(animals(options))