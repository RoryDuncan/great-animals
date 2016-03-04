# great-animals
## Generate nice statements about real animals.

### Introduction

great-animals is a npm module that allows you to create fancy [uuid's](https://en.wikipedia.org/wiki/Universally_unique_identifier), similar to [haikunatorjs](https://github.com/Atrox/haikunatorjs) and others.

### Installation, Usage, and Options


#### Installation

Install `great-animals` via npm, as outlined below:

```
$ npm install great-animals
```

Then, you may require great-animals in your scripts, which exports a function.

``` js
var animal = require('great-animals');
```

#### Usage

Continuing the code sample above, you may then call the variable `animal` which will return a random, animal-related uuid.

```
animal();
```

#### Options

The `great-animals` module can be passed an object containing the following options:

1. `tokenLength`: The length of the token appended to the end. The token is a set of RandomBytes. Defaults to 6. Can be set to 0 to not use a token.

2. `names`: Can be either `basic` or `scientific`

3. `delimiter`: The string that joins each word and token. Defaults to a hyphen `-`.


### Example Output

#### Basic Animal Names

Using animal names that have been simplified

1. `celebrated-southern-screamer-1386b5`
2. `grounded-go-away-bird-8c0d10`
3. `quintessential-bunting-944bd1`
4. `vivacious-kongoni-4d5838`
5. `conscientious-sandgrouse-2902f3`
6. `experienced-guinea-fowl-646802`
7. `tender-wallaby-dce98b`
8. `substantial-purple-grenadier-ac66ae`
9. `notable-lark-6b956e`
10. `nifty-dolphin-b3c5ea`
11. `venerated-chickadee-7b81f9`
12. `well-groomed-sifaka-657511`
13. `supportive-secretary-bird-b10dec`
14. `mighty-tayra-d8e653`
15. `luxurious-grison-2908dd`
16. `mighty-rhea-0c5e42`
17. `unique-raven-fbfbf3`
18. `helpful-shrike-21ed7a`
19. `significant-currasow-2e33a0`
20. `learned-turaco-f8d645`
21. `dapper-bighorn-sheep-7fb8b5`
22. `unrestrained-hartebeest-20170b`
23. `wonderful-savanna-fox-676ddb`
24. `fearless-horned-owl-8a4de7`
25. `profuse-river-wallaby-83dff4`

#### Long Animal Names

Using scientific animal names.

1. `luxurious-north-american-river-otter-2e70f9`
2. `clever-ornate-rock-dragon-97fce3`
3. `flawless-black-cheeked-waxbill-cf6b0c`
4. `creative-dark-winged-trumpeter-d1d157`
5. `strong-south-american-sea-lion-d1f7c0`
6. `thorough-white-tailed-deer-0a158a`
7. `perky-purple-moorhen-db9c00`
8. `stupendous-paca-71193f`
9. `attentive-mara-9f8ff6`
10. `venerated-red-winged-hawk-e74ba8`
11. `dynamic-miners-cat-a1c2fc`
12. `apt-pygmy-possum-141a09`
13. `marvelous-madagascar-hawk-owl-89c213`
14. `dynamic-laughing-dove-1b9097`
15. `colorful-eastern-dwarf-mongoose-677821`
16. `affectionate-king-vulture-5b66d5`
17. `significant-brush-tailed-bettong-f6de7e`
18. `ironclad-laughing-dove-b2fc9e`
19. `thorough-paca-a480e6`
20. `productive-llama-e73461`
21. `fierce-african-clawless-otter-1cbc8b`
22. `profuse-common-nighthawk-e3ea86`
23. `flawless-laughing-dove-a2ecbf`
24. `dutiful-python-353ec0`
25. `strong-rhesus-macaque-e312d0`