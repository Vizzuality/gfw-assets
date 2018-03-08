import $gfwdom from '../../facade';
import utils from '../../utils';
import headerTpl from './header.tpl';
import menuOptions from './menuOptions';
import headerIconsTpl from './header-icons.tpl';
import LoginButton from '../my-gfw/login-button';

/**
 * Header
 * @param  {window} root
 * @return {Class}
 */

class Header {
  constructor() {
    this.el = document.getElementById('headerGfw');
    if (!this.el) {
      throw new Error('element #headerGfw doesn\'t exist');
    }
    this.render();
  }

  render() {
    this.el.innerHTML = headerTpl() + headerIconsTpl();
    this.cache();
    this.setLogosOptions();
    this.setMenuOptions();
    this.setParams();
    this.initHighlightCurrent();
    this.initListeners();
    this.resizeMenu();
    this.resizeMenuLinks();
    this.initTranslate();
    this.closeMenuOptionsMenu();
    this.initMyGFW();
    if (window.liveSettings.page === 'map') {
      this.initMapFunctions();
    }
    this.setStoriesLinkVisibility();
    return this;
  }

  /**
   * Cache all the elements that we will use after
   */
  cache() {
    this.keyboardPulse = false;
    this.mobileMenu = false;
    this.smallMenu = 0;
    this.mobileMenuWidth = 0;
    this.loadFirstResize = false;
    this.doLinkResize = false;
    this.goToResize = false;
    this.deleteLinks = 1;
    this.linksHiddenMenu = [];
    this.$document = $gfwdom(document);
    this.site = window.liveSettings.site;

    // Script
    this.$script = $gfwdom('#loader-gfw');

    // Html-body
    this.$htmlbody = $gfwdom('html,body');
    this.$body = $gfwdom('body');

    // Header
    this.$header = $gfwdom('#headerGfw');
    this.$headerBar = this.$header.find('.m-header');
    this.navOptions = this.$header.find('.nav-options');
    this.logoMenu = this.$header.find('.logo-menu');
    this.initLanguageText = this.$header.find('.init-language-tex');
    this.useGoogleTranslate = this.$header.attr('data-google') || false;

    this.navSections = this.$header.find('.nav-sections');
    this.navSectionLogo = this.$header.find('.logo-sections-container');
    this.navOptions = this.$header.find('.options-container');

    this.navMobileSections = this.$header.find('.mobile-nav-sections');
    this.subMenu = this.$header.find('.m-header-sub-menu-dashboard');
    this.navContainer = this.$header.find('.m-header-nav-container');

    // Dashboard Menu
    this.searchContainer = document.getElementById('search-container');
    this.searchInput = document.getElementById('search-input');
    this.openMenuDashboard = this.$header.find('.open-menu-button-dashboard');
    this.menuDashboard = this.$header.find('#dashboard-sub-menu');
    this.boxesContainer = this.$header.find('.boxes-container');
    this.currentBox = this.boxesContainer.find(`.box.${this.site}`);
    this.storiesLink = $gfwdom('#stories-link');

    this.$links = this.$header.find('a');
    this.$linksSubmenu = this.$header.find('a');

    // Login Menu
    this.menuLogin = this.$header.find('.m-header-sub-menu-login');

    // Language Menu
    this.triangleLanguage = this.$header.find('.lang-triangle');

    // Black list menu Options
    this.blacklistOptions = [
      'globalforestwatch.org/small-grants-fund',
      'staging.globalforestwatch.org/small-grants-fund',
      'developers.globalforestwatch.org/',
      'globalforestwatch.org/howto',
      'staging.globalforestwatch.org/howto',
      'blog.globalforestwatch.org/',
      'staging.globalforestwatch.org/contribute-data',
      'globalforestwatch.org/contribute-data',
      'data.globalforestwatch.org/',
    ];
  }

  /**
   * Set logos on header and options gallery
   */
  setLogosOptions() {
    let path = location.hostname;
    if (location.pathname !== '/') {
      path += location.pathname;
    }
    this.logoMenu.addClass(this.site);
    const ribbon = window.liveSettings && window.liveSettings.ribbon;
    if (ribbon) {
      this.logoMenu.append(`<span class="ribbon"><span>${ribbon}</span></span>`);
    }
    if (this.blacklistOptions.indexOf(path) !== -1) {
      this.navSections.css('display', 'none');
    }
    this.currentBox.remove();
  }

  /**
   * Functions for close dashboard when click menu options
   */
  closeMenuOptionsMenu() {
    $gfwdom('.option-menu').on('click', this.hideMenus.bind(this));
    $gfwdom('.option-menu').on('click', this.hideLanguageMenu.bind(this));
  }

  /**
   * Set menu's options
   */
  setMenuOptions() {
    $gfwdom('.more-options-secondary-container').html(menuOptions.getOptions(this.site));
    this.navSections.html(menuOptions.getOptions(this.site));
    this.navMobileSections.html(menuOptions.getOptions(this.site));
  }

  /**
   * Set Params
   */
  setParams() {
    const $parent = document.querySelector('#loader-gfw');
    this.params = {
      current: $parent.getAttribute('data-current'),
    };
  }

  /**
   * Set current depending on the script data current
   */
  initHighlightCurrent() {
    if (this.params && this.params.current) {
      this.$header.find(this.params.current).addClass('-current');
    }
  }

  /**
   * Main functions for menu
   */
  utilsMenus() {
    // Key bindings
    this.$document.on('keyup.apps', (e) => {
      if (e.keyCode === 27) {
        this.hideMenus();
        this.hideLanguageMenu();
      }
    });

    // Prevent mobile scroll
    if (utils.getWindowWidth() < 850) {
      this.resizeMenu();
      this.$htmlbody.toggleClass('-no-scroll');
    }
  }

  utilsMenusMobile() {
    this.$header.on('click', '#transifexTranslateMobileElement > .tx-live-lang-picker > li', this.hideMenusMobile.bind(this));
  }

  initListeners() {
    // Menus
    $gfwdom(window).on('resize.assets', this.resizeMenuLinks.bind(this));
    // $gfwdom(window).on('load', this.resizeMenuLinks.bind(this));

    $gfwdom(window).on('resize.assets', this.resizeMenu.bind(this));

    this.$header.on('click', '.-js-open-menu, .-js-open-menu > .mobile-title, .-js-open-menu > .desktop-title', this.showMenu.bind(this));
    this.$body.on('click', '.-js-open-menu-mobile', this.showMenuMobile.bind(this));
    this.$header.on('click', '.open-menu-button-language', this.showLanguageMenu.bind(this));
    this.$header.on('click', '.txlive-langselector-current', this.showLanguageMenu.bind(this));
    this.$backMenu = $gfwdom('.back-close-menu');
    this.$body.on('click', '.back-close-menu', this.hideMenus.bind(this));
    this.$body.on('click', '.back-close-menu', this.hideLanguageMenu.bind(this));
  }

  changeTriangleLanguage(value) {
    if (value === '#language-sub-menu') {
      if (this.triangleLanguage.hasClass('-open')) {
        this.triangleLanguage.removeClass('-open');
      } else {
        this.triangleLanguage.addClass('-open');
      }
    } else if (this.triangleLanguage.hasClass('-open')) {
      this.triangleLanguage.removeClass('-open');
    }
  }

  showMenuKeyBoard() {
    if (!this.keyboardPulse) {
      const $languageMenu = this.$header.find('.txlive-langselector-list');
      if ($languageMenu.hasClass('txlive-langselector-list-opened')) {
        $languageMenu.removeClass('txlive-langselector-list-opened');
      }
      this.hideMenus();
      if (utils.getWindowWidth() < 850) {
        this.resizeMenu();
        this.$htmlbody.toggleClass('-no-scroll');
      }
      this.openMenuDashboard.addClass('-active');
      this.menuDashboard.addClass('-active');
      if (utils.getWindowWidth() > 850) {
        this.searchInput.focus();
      }
      this.utilsMenus();
      this.keyboardPulse = true;
    }
  }

  showMenu(e) {
    const currentTarget = e.currentTarget;
    let dataSubMenu = currentTarget.getAttribute('data-submenu');
    let $current;

    if (dataSubMenu === '#login-sub-menu') {
      if ($gfwdom('.open-menu-button-login').find('.logged-button').length !== 0) {
        dataSubMenu = '#submenulogged';
      }
    }

    if (!$gfwdom(currentTarget).hasClass('-active')) {
      // Hide all the opened menus
      this.hideMenus();
      this.$backMenu.addClass('-show');
      // Active menu
      $gfwdom(currentTarget).toggleClass('-active');
      this.changeTriangleLanguage(dataSubMenu);
      // Hidden language Menu
      if (dataSubMenu !== '#language-sub-menu') {
        const $languageMenu = this.$header.find('.txlive-langselector-list');
        if ($languageMenu.hasClass('txlive-langselector-list-opened')) {
          $languageMenu.removeClass('txlive-langselector-list-opened');
        }
      }
      if (dataSubMenu === '#submenulogged') {
        $current = $gfwdom('#submenulogged');
      } else {
        $current = $gfwdom(currentTarget.getAttribute('data-submenu'));
      }

      $current.toggleClass('-active');
      this.navOptions.toggleClass('-show-triangle');

      if (this.menuDashboard.hasClass('-active')) {
        if (utils.getWindowWidth() > 850) {
          this.searchInput.focus();
        }
      }

      this.utilsMenus();
      this.resizeMenu('boxes');
    } else {
      this.navOptions.toggleClass('-show-triangle');
      this.changeTriangleLanguage(dataSubMenu);
      this.hideMenus();
    }

    if (utils.getWindowWidth() < 850) {
      $gfwdom('.sticky-nav-options').toggleClass('-show');
    }
  }


  showMenuMobile(e) {
    const currentTarget = e.currentTarget;
    const dataSubMenu = currentTarget.getAttribute('data-submenu');
    let $current;

    if (dataSubMenu === '#login-sub-menu-mobile') {
      if ($gfwdom('.open-menu-button-login').find('.logged-button').length !== 0) {
        $current = $gfwdom('#logged-sub-menu-mobile');
      } else {
        $current = $gfwdom('#login-sub-menu-mobile');
      }
    } else {
      $current = $gfwdom(currentTarget.getAttribute('data-submenu'));
    }

    // const
    if (!$gfwdom(currentTarget).hasClass('-active')) {
      this.hideMenusMobile();
      // Active menu
      $gfwdom(currentTarget).toggleClass('-active');
      // Hidden language Menu
      $current.toggleClass('-active');
      this.utilsMenusMobile();
    } else {
      this.hideMenusMobile();
    }
  }

  hideMenus() {
    // // Allow mobile scroll
    if (this.menuDashboard.hasClass('-active')) {
      this.searchContainer.reset();
    }

    this.$htmlbody.removeClass('-no-scroll');

    this.$header.find('.sub-menu').forEach(function findSubMenu(v) {
      if ($gfwdom(v).hasClass('-active')) {
        $gfwdom(v).removeClass('-active');
        this.$backMenu.removeClass('-show');
      }
    }.bind(this));

    this.$header.find('.txlive-langselector-list').removeClass('-active');

    this.$header.find('.sub-menu-mobile').forEach(function findSubMenu(v) {
      if ($gfwdom(v).hasClass('-active')) {
        $gfwdom(v).removeClass('-active');
      }
    }.bind(this));

    this.$header.find('.open-menu-button').forEach(function(v){
      if ($gfwdom(v).hasClass('-active')) {
        $gfwdom(v).removeClass('-active');
        this.$backMenu.removeClass('-show');
      }
    }.bind(this));

    // Key bindings
    this.$document.off('keyup.apps');
    // Click bindings
    this.$document.off('click.apps');

    this.keyboardPulse = false;
    this.navOptions.toggleClass('-show-triangle');
  }

  hideMenusMobile() {
    this.$body.find('.m-header > .sub-menu-mobile').forEach(function(v){
      if ($gfwdom(v).hasClass('-active')) {
        $gfwdom(v).toggleClass('-active')
      }
    });

    this.$body.find('#tx-live-lang-picker').forEach(function(v){
      if ($gfwdom(v).hasClass('-active')) {
        $gfwdom(v).toggleClass('-active')
      }
    });

    this.$body.find('.m-header > .sticky-nav-options > .open-menu-button').forEach(function(v){
      if ($gfwdom(v).hasClass('-active')) {
        $gfwdom(v).removeClass('-active')
      }
    });
  }

  showLanguageMenu() {
    const $languageMenu = this.$header.find('.txlive-langselector-list');
    if ($languageMenu.hasClass('txlive-langselector-list-opened')) {
      $languageMenu.removeClass('txlive-langselector-list-opened');
    } else {
      $languageMenu.addClass('txlive-langselector-list-opened');
    }
    this.$header.on('click', '.txlive-langselector-list > li', this.hideLanguageMenu.bind(this));
  }

  hideLanguageMenu() {
    const $languageMenu = this.$header.find('.txlive-langselector-list');
    if ($languageMenu.hasClass('txlive-langselector-list-opened')) {
      $languageMenu.removeClass('txlive-langselector-list-opened');
    }
    if (this.triangleLanguage.hasClass('-open')) {
      this.changeTriangleLanguage('#language-sub-menu');
    }
  }

  toggleTransifex() {
    const $btnTransifex = this.$header.find('#btnTransifexTranslateMobileElement');
    const $transifexList = this.$header.find('#transifexTranslateMobileElement');

    if ($btnTransifex.hasClass('-active')) {
      $btnTransifex.removeClass('-active');
      $transifexList.removeClass('-active');
    } else {
      $btnTransifex.addClass('-active');
      $transifexList.addClass('-active');
    }
  }

  sendAnalyticsEvent(e) {
    // TO-DO: Be careful with the links that are links on desktop
    // but buttons on mobile devices
    // What can we do?
    // ANSWER: I've set a class 'link-analytics' to differenciate them
    const $el = $gfwdom(e.currentTarget);
    const url = $el.attr('href');
    const target = $el.attr('target');
    const regex = /^(https?|ftp):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i;

    if (!target) {
      if (window.ga !== undefined) {
        window.ga('send', 'event', 'Menu', 'Click', url);
      }
    } else if (window.ga !== undefined && regex.test(url)) {
      e && e.preventDefault();

      // https://developers.google.com/analytics/devguides/collection/analyticsjs/sending-hits?hl=es#handling_timeouts
      let callbackTriggered = false;
      setTimeout(function() {
        if (!callbackTriggered) {
          document.location = url
        }
      }, 1000);

      window.ga('send', 'event', 'Menu', 'Click', url, {
        'hitCallback': function(){
          callbackTriggered = true;
          document.location = url;
        }
      });
    } else {
      document.location = url;
    }
  }

  /**
   * Google translate
   */
  initTranslate() {
    if (!!window.liveSettings && !this.useGoogleTranslate) {
      this.initTransifex();
    } else {
      this.initGoogleTranslate();
    }
  };

  initGoogleTranslate() {
    $gfwdom('#transifexTranslateElement').css('display', 'none');
    $gfwdom('#googleTranslate').css('display', 'block');
    $gfwdom('.googleTranslateMobile').css('display', 'block');
    $gfwdom('.lang-triangle').css('display', 'none');
    setTimeout(() => {
      if (utils.getWindowWidth() > 850) {
        window['googleTranslateElementInitGFW'] = () => {
          new google.translate.TranslateElement({
            pageLanguage: '',
            includedLanguages: 'ar,es,en,fr,id,pt,ru,zh-CN,de,uk,ro,tr,it,hi,km',
            layout: google.translate.TranslateElement.InlineLayout.SIMPLE,
            autoDisplay: false
          },'googleTranslate');
        }
      } else {
        window['googleTranslateElementInitGFW'] = () => {
          new google.translate.TranslateElement({
            pageLanguage: '',
            includedLanguages: 'ar,es,en,fr,id,pt,ru,zh-CN,de,uk,ro,tr,it,hi,km',
            layout: google.translate.TranslateElement.InlineLayout.SIMPLE,
            autoDisplay: false
          },'googleTranslateMobile');
        }
      }
      const translateScript = document.createElement('script');
      translateScript.type = 'text/javascript';
      translateScript.src = 'https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInitGFW';
      document.head.appendChild(translateScript);
    }, 0);
  }

  /**
   * Transifex
   */
  initTransifex() {
    $gfwdom('.open-menu-button-language').addClass('-min-width-transifex');

    window.liveSettings.picker = (utils.isSmallScreen()) ? '#transifexTranslateMobileElement' : '#transifexTranslateElement';

    const blacklist = [
      'climate.globalforestwatch.org',
      'water.globalforestwatch.org',
      'gfwc-staging.herokuapp.com',
      'forest-watcher.herokuapp.com',
      // 'commodities.globalforestwatch.org'
    ];

    // Check if the location.hostname is in the blacklist
    // If true hide transifex element, but keep it working to store the string of the page
    // Then init Google translate plugin
    if (blacklist.indexOf(location.hostname) !== -1) {
      const $transifexEl = $gfwdom(window.liveSettings.picker);
      $transifexEl.css({
        display: 'none',
      });
      this.initGoogleTranslate();
    }

    setTimeout(() => {
      const translateScript = document.createElement('script');
      translateScript.type = 'text/javascript';
      translateScript.src = '//cdn.transifex.com/live.js';
      document.head.appendChild(translateScript);
    }, 0);
  }

  /**
   * Init My GFW
   */
  initMyGFW() {
    const blacklist = [
      'fires-staging.globalforestwatch.org',
      'fires.globalforestwatch.org/',
    ];
    if (blacklist.indexOf(location.hostname) !== -1) {
      $gfwdom('#my-gfw-container').css({ display: 'none' });
    } else {
      if (utils.isDefaultHost()) {
        const loginButton = new LoginButton();
        loginButton.init();
      } else {
        $gfwdom('#my-gfw-container').css({ display: 'none' });
      }
    }
  }

  resizeMenu(value) {
    if (value !== 'boxes') {
      if (utils.getWindowWidth() < 700) {
        this.$header.find('.m-header-submenu').forEach((v) => {
          $gfwdom(v).css({
            height: `${utils.getWindowHeigth() - 50}px`,
          });
        });
      } else {
        this.$header.find('.m-header-submenu').forEach((v) => {
          $gfwdom(v).css({ height: 'auto' });
        });
      }

      if (utils.getWindowWidth() < 850) {
        if (!this.mobileMenu) {
          this.$headerBar.append(`
            <div id="login-sub-menu-mobile" class="m-header-sub-menu-login sub-menu sub-menu-mobile">
              <div class="container">
                <p>Log in is required so you can view, manage, and delete your subscriptions. Questions? <a href="mailto:gfw@wri.org">Contact us</a>.</p>
                <ul>
                  <li class="my-gfw-sign-in-twitter login-item -twitter ">
                    <a href="auth/twitter?applications=gfw" class="my-gfw-sign-in">Log in with Twitter</a>
                  </li>
                  <li class="my-gfw-sign-in-facebook login-item -facebook">
                    <a href="auth/facebook?applications=gfw" class="my-gfw-sign-in">Log in with Facebook</a>
                  </li>
                  <li class="my-gfw-sign-in-google login-item -google">
                    <a href="auth/google?applications=gfw" class="my-gfw-sign-in">Log in with Google</a>
                  </li>
                </ul>
              </div>
            </div>
            <div id="logged-sub-menu-mobile" class="sub-menu-mobile m-header-submenu m-header-submenu-logged m-header-submenu-logged-mobile">
              <ul class="more-list">
                <a target="_blank" href="/my_gfw/subscriptions"><li><span>My Subscriptions</span></li></a>
                <a target="_blank" href="/my_gfw/stories"><li><span>My Stories</span></li></a>
                <a target="_blank" href="/my_gfw"><li><span>My Profile</span></li></a>
                <a href="/auth/logout" id="my-gfw-sign-out"><li><span>Log Out</span></li></a>
              </ul>
            </div>
            <div class="sticky-nav-options">
              <div class="sticky-item -language -border -js-open-menu-mobile open-menu-button" data-submenu="#tx-live-lang-picker">
                <div id="transifexTranslateMobileElement" class="m-transifex"></div>
                <div id="googleTranslateMobile" class="googleTranslateMobile"></div>
              </div>
              <div class="sticky-item -js-open-menu-mobile open-menu-button open-menu-button-login" data-submenu="#login-sub-menu-mobile">
                My GFW
                <svg class="profile-icon"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-h-mygfw"></use></svg>
                <svg class="close-icon"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-h-close"></use></svg>
              </div>
            </div>
          `);
          this.mobileMenu = true;
        }
      } else {
        $gfwdom('.m-header-sub-menu-login.sub-menu-mobile').remove();
        $gfwdom('.sticky-nav-options').remove();
        this.mobileMenu = false;
      }
    } else {
      const n = $gfwdom('.box').length;
      let boxContainerWidth = 0;
      let longitude = 0;
      let firstOut = false;
      let boxContainerLeft = 0;
      let boxLeft = 0;
      let notAppear = false;
      const i = 0;

      this.$boxContainer = this.$header.find('.applications-container');

      this.$header.find('.boxes-container').forEach((v) => {
        boxContainerWidth = v.offsetWidth;
        boxContainerLeft = v.getBoundingClientRect().left;
      });

      this.$header.find('.box').forEach((v) => {
        boxLeft = v.getBoundingClientRect().left - boxContainerLeft;
        if (boxLeft + 88 >= boxContainerWidth) {
          if (!firstOut) {
            longitude = boxLeft - boxContainerWidth;
            notAppear = true;
            firstOut = true;
          }
        }
      });

      if (notAppear) {
        this.$header.find('.box').forEach((v) => {
          if (i < n) {
            const distance = longitude * 3;
            if (distance > 0) {
              $gfwdom(v).css('margin-right', `${distance}px`);
            }
          }
        });
      }
    }
  }

  resizeMenuLinks() {
    if (this.smallMenu !== 0 && utils.getWindowWidth() > this.smallMenu) {
      if (this.navContainer.hasClass('-small-menu')) {
        this.navContainer.removeClass('-small-menu');
      }
    }

    if (this.mobileMenuWidth !== 0 && utils.getWindowWidth() > this.mobileMenu) {
      if (this.navContainer.hasClass('-mobile-menu')) {
        this.navContainer.removeClass('-mobile-menu');
        this.subMenu.removeClass('-mobile');
        this.navContainer.addClass('-small-menu');
      }
    }

    if (($gfwdom(this.navSectionLogo).get(0).clientWidth +
         $gfwdom(this.navOptions).get(0).clientWidth) >
        (this.navContainer.get(0).clientWidth + 100)) {
      if (!this.navContainer.hasClass('-small-menu')) {
        this.smallMenu = utils.getWindowWidth();
        this.navContainer.addClass('-small-menu');
      }
    }


    this.linksHiddenMenu.forEach((v, i) => {
      if (v.position < $gfwdom('.options-container').get(0).offsetLeft) {
        this.$header.find('.nav-sections > li').forEach((vD, iD) => {
          if (v.name === $gfwdom(vD).data('menu')) {
            // $gfwdom(vD).css('display', 'block');
          }
        });
      }
    });

    if ((($gfwdom('.options-container').get(0).offsetLeft) - ($gfwdom('.nav-sections').get(0).offsetLeft + $gfwdom('.nav-sections').get(0).clientWidth)) < 0) {
      const size = this.$header.find('.nav-sections > li').length - this.deleteLinks;
      this.$header.find('.nav-sections > li').forEach((v, i) => {
        if (i === size) {
          $gfwdom(v).css('display', 'none');
          this.deleteLinks += 1;
          // console.log($gfwdom(this.navSectionLogo).get(0).clientWidth);
          this.$header.find('.more-options-secondary-container > li').forEach((vD, iD) => {
            if ($gfwdom(v).data('menu') === $gfwdom(vD).data('menu')) {
              this.linksHiddenMenu.push({
                name: $gfwdom(v).data('menu'),
                position: ($gfwdom('.options-container').get(0).offsetLeft - this.navSectionLogo.get(0).clientWidth) + ($gfwdom('.nav-sections').get(0).clientWidth),
              });
              $gfwdom(vD).addClass('-show');
            }
          });

          if ((($gfwdom('.options-container').get(0).offsetLeft) - ($gfwdom('.nav-sections').get(0).offsetLeft + $gfwdom('.nav-sections').get(0).clientWidth)) < 0) {
            this.resizeMenuLinks();
          }
        }
      });
    }
  }


  initMapFunctions() {
    const mapStyles = '#headerGfw,#headerGfw .m-header-nav-container{height:45px!important}@media (min-width:1000px){#headerGfw .m-header{position:absolute;top:-45px!important;transition:top .2s linear;left:0;right:0}#headerGfw.-show .m-header{position:absolute;top:0!important}#headerGfw .logo-menu{top:45px!important;position:relative!important;transition:.2s linear}#headerGfw .logo-menu.-show{top:0!important;position:relative!important}}#headerGfw .m-header-sub-menu-dashboard{position:relative!important;overflow-y:scroll;padding-left:0!important;padding-right:0!important}#headerGfw .txlive-langselector-list{top:39px!important}#headerGfw #transifexTranslateMobileElement .txlive-langselector-list{top:calc(-100vh + 58px + 45px)!important;height:calc(100vh - 58px - 45px)!important}#headerGfw .m-header-sub-menu-login,#headerGfw .m-header-submenu-logged{top:44px!important}#headerGfw .nav-sections{max-height:44px!important;margin-left:40px!important}#headerGfw .nav-sections li.-selected::after{bottom:-10px!important}#headerGfw .logo-sections-container{height:45px}#headerGfw .logo-sections-container .nav-sections li:after{top:26px}';
    $gfwdom(`<style type="text/css">${mapStyles}</style>`).appendTo('head');
    $gfwdom('body').on('mousemove', function(event) {
      if (event.pageY < 100) {
        $gfwdom('#headerGfw').addClass('-show');
        $gfwdom('.logo-menu').addClass('-show');
        $gfwdom('.nav-sections').addClass('-show');
        $gfwdom('.layout-header-bottom').addClass('-show');
      }

      if (event.pageY > 120) {
        const allMenuOptionsHover = event.target.closest('header') ? true : false;
        if (!allMenuOptionsHover) {
          $gfwdom('#headerGfw').removeClass('-show');
          $gfwdom('.logo-menu').removeClass('-show');
          $gfwdom('.nav-sections').removeClass('-show');
          $gfwdom('.layout-header-bottom').removeClass('-show');
        }
      }
    });
  }

  setStoriesLinkVisibility() {
    if (!utils.isFlagship()) {
      this.storiesLink.addClass('-hidden');
    }
  }
}

export default Header;
