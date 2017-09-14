# Stillas

Scaffold for new projects (macOS or Linux).

---

## Install & run

Setup:

```bash
npm run setup && cd site
```

Run (with live reload):

```bash
.././hugo server --theme="basic-theme" -D
```

After, go to `themes/basic-theme` and then.

## Stylus/CSS

### Tasks (npm scripts)

Lint:

```bash
npm run css-lint
```

Compile to CSS:

```bash
npm run css-compile
```

All (lint and compile):

```bash
npm run css
```

Watch:

```bash
npm run css-watch
```

## JavaScript

Includes: [Babel](https://babeljs.io/), [Vue.js](https://vuejs.org/) and [Browserify](browserify.org).

### Tasks

Lint:

```bash
npm run js-lint
```

Compile:

```bash
ENV=[development or production] npm run js-compile
```

All (lint and compile):

```bash
ENV=[development or production] npm run js
```

Watch (default: `ENV=development`):

```bash
npm run js-watch
```

## Watch Stylus and JavaScript

```bash
npm run watch
```

---

## License

The MIT License ([MIT](https://github.com/stillas/stillas/blob/development/license.md))

Copyright (c) 2017 marcker
