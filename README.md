# great-animals
## Generate nice statements about real animals.

### Introduction

great-animals is a npm module that allows you to create fancy [uuid's](https://en.wikipedia.org/wiki/Universally_unique_identifier), similar to [haikunator](https://github.com/Atrox/haikunatorjs) and others.

### Usage

The recommended usage is to install `great-animals` via npm, as outlined below:

```
$ npm install great-animals
```

Then, you may require great-animals in your scripts, which exports a function.

``` js
var animal = require('great-animals');
```

Continuing the code sample above, you may then call the variable `animal` which will return a random, animal-related uuid.

```
animal();
```