/* eslint-disable */
'use strict';

const smallBreakPoint = 850;
const whitelist = [
  'www.globalforestwatch.org',
  'globalforestwatch.org',
  'localhost',
  'gfw-nav.herokuapp.com',
  'staging.globalforestwatch.org',
  'gfw-loss-categories.herokuapp.com/',
];

const apiVersion = 'v1';

const apiUrls = {
  'www.globalforestwatch.org': 'https://production-api.globalforestwatch.org',
  'gfw-nav.herokuapp.com': 'https://staging-api.globalforestwatch.org',
  'staging.globalforestwatch.org': 'https://staging-api.globalforestwatch.org',
};

const blacklist = [
  'climate.globalforestwatch.org',
  'commodities.globalforestwatch.org',
  'fires.globalforestwatch.org',
  'water.globalforestwatch.org'
]

const defaultGfwDomain = whitelist[0];
const defaultLanguage = 'en';

/**
 * Utils
 * @param  {window} root
 * @return {Object}
 */
const utils = {

  // GETTERS
  getWindowWidth() {
    return window.innerWidth ||
      document.documentElement.clientWidth ||
      document.getElementsByTagName('body')[0].clientWidth;
  },

  getWindowHeigth() {
    return window.innerHeight ||
      document.documentElement.clientHeight ||
      document.getElementsByTagName('body')[0].clientHeight;
  },

  getCurrentLocation() {
    return window.location.hostname;
  },

  getDefaultDomain() {
    return defaultGfwDomain;
  },

  isLocalhost() {
    return this.getCurrentLocation() === 'localhost';
  },

  getHost() {
    let currentLocation = window.location.hostname;
    const isValidLocation = whitelist.indexOf(currentLocation) !== -1;
    // Checking if current location is contained in gfw domains array
    if (!isValidLocation) {
      currentLocation = defaultGfwDomain;
    }
    if (window.location.port !== '') {
      currentLocation = `${currentLocation}:${window.location.port}`;
    }
    return `http://${currentLocation}`;
  },

  getAPIHost(versioned=false) {
    let currentLocation = window.location.hostname;
    let apiLocation = apiUrls[currentLocation] || apiUrls[defaultGfwDomain];

    if (versioned) {
      return `${apiLocation}/${apiVersion}`;
    } else {
      return apiLocation;
    }

    return apiLocation;
  },

  isLoggedIn(options) {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', `${this.getAPIHost()}/${apiVersion}/user`, true);
    xhr.withCredentials = true;
    xhr.onload = () => {
      const responseStatus = xhr.status;
      if (responseStatus !== 200) {
        options.failure();
      } else {
        var response = xhr.responseText;
        if (!!response && response != undefined && response != '') {
          options.success(JSON.parse(response));
        }
      }
    };

    xhr.onerror = () => {
      options.failure();
    }
    xhr.send();
  },

  /**
   * Returns the current language from Transifex
   * @returns {string} language selected
   */
  getTransifexLanguage() {
    var lang = defaultLanguage;
    if (window.Transifex) {
      lang = window.Transifex.live.getSelectedLanguageCode();
    }
    return lang;
  },

  // STATES
  isSmallScreen() {
    return this.getWindowWidth() < smallBreakPoint;
  },

  isDefaultHost() {
    var hostname = window.location.hostname,
        // check is the hostname is inside the whitelist
        is_white = whitelist.indexOf(hostname) !== -1,
        is_black;

    // check is the hostname is inside the blacklist or
    // if it has 'globalforestwatch.org' in its hostname
    if (blacklist.indexOf(hostname) === -1) {
      is_black = (hostname.indexOf('globalforestwatch.org') === -1);
    } else {
      is_black = true;
    }

    return (is_white || !is_black);
  },

  // Returns a function, that, as long as it continues to be invoked, will not
  // be triggered. The function will be called after it stops being called for
  // N milliseconds. If `immediate` is passed, trigger the function on the
  // leading edge, instead of the trailing.
  // Source: https://davidwalsh.name/function-debounce
  debounce(func, wait, immediate) {
  	let timeout;
  	return () => {
  		const context = this, args = arguments;
  		const later = () => {
  			timeout = null;
  			if (!immediate) func.apply(context, args);
  		};
  		const callNow = immediate && !timeout;
  		clearTimeout(timeout);
  		timeout = setTimeout(later, wait);
  		if (callNow) func.apply(context, args);
  	};
  },

  isFlagship() {
    const current = window.location.hostname;
    if (whitelist.indexOf(current) > -1) {
      return true;
    }
    return false;
  },

};

export default utils;
