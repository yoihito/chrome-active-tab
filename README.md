# chrome-active-tab [![Build Status](https://travis-ci.org/sindresorhus/active-win.svg?branch=master)](https://travis-ci.org/sindresorhus/active-win)

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
		title: 'Github - Chrome Active Tab',
		url: 'https://github.com'
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

## OS support

It works on macOS.

## License

MIT