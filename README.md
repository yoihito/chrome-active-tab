# chrome-active-tab  [![License](https://img.shields.io/npm/l/chrome-active-tab.svg)](https://github.com/yoihito/chrome-active-tab/blob/master/LICENSE)
Get metadata about the active tab in Chrome(title, url).

Works on macOS.


## Install

```
$ npm install chrome-active-tab
```


## Usage

```js
const chromeActiveTab = require('chrome-active-tab');

(async () => {
	console.log(await chromeActiveTab());
	/*
	{
    title: 'chrome-active-tab - npm',
    url: 'https://www.npmjs.com/package/chrome-active-tab',
    platform: 'macos'
  }
	*/
})();
```


## API

### chromeActiveTab()

Returns a `Promise<Object>` with the result, or `Promise<undefined>` if there is no active tab or if the information is not available.

### chromeActiveTab.sync()

Returns an `Object` with the result, or `undefined` if there is no active tab.


## Result

- `title` *(string)* - Tab title
- `url` *(string)* - Tab url
- `platform` *(string)* - Platform

## OS support

It works on macOS.

## License

MIT
