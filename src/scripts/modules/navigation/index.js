/* eslint-disable */
'use strict';

import $gfwdom from '../../facade';
import navigationTpl from './navigation.tpl';

import globaljson from './global.json';
import howtojson from './howto.json';
import developersjson from './developers.json';
import firesjson from './fires.json';
import commoditiesjson from './commodities.json';
import waterjson from './water.json';

const navigationMenus = {
  'default': globaljson,
  'localhost': globaljson,

  // Paths
  'howto': howtojson,
  'developers-corner': developersjson,

  // Fires
  'fires.globalforestwatch.org': firesjson,
  'wri-gfw-fires-staging.herokuapp.com': firesjson,

  // Commodities
  'commodities.globalforestwatch.org': commoditiesjson,
  'commodities-test.herokuapp.com': commoditiesjson,

  // Water
  'water.globalforestwatch.org': waterjson,
  'water-staging.globalforestwatch.org': waterjson,
};


/**
 * Navigation
 * @param  {window} root
 * @return {Class}
 */
class Navigation {

  constructor() {
    this.$el = $gfwdom('#submenuMenuMobile');
    if (!this.$el) {
      throw new Error('element #submenuMenuMobile doesn\'t exist');
    }
    this.render();
  }

  render() {
    this.$el.html(navigationTpl({
      menu: this.getMenu(),
      transifex: !!window.liveSettings,
    }));
  }

  getMenu() {
    let hostname = location.hostname;
    let path = (!!location.pathname && location.pathname != '/') ? location.pathname.split('/')[1] : null;

    // Develop
    // let path = '/developers-corner';

    if (hostname == 'localhost' || hostname == 'staging.globalforestwatch.org' || hostname == 'www.globalforestwatch.org') {
      return navigationMenus[path] || navigationMenus['default'];
    }
    return navigationMenus[hostname] || navigationMenus['default'];
  }
}

export default Navigation;
