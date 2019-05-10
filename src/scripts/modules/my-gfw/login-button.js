'use strict';

import loginButtonTpl from './login-button.tpl';
import logoutButtonTpl from './logout-button.tpl';
import LoginModal from './login-modal';
import $gfwdom from '../../facade';
import utils from '../../utils';

class LoginButton {

  init() {
    this.$el = $gfwdom('#my-gfw-container');
    if (!this.$el) {
      throw new Error('element #my-gfw-container doesn\'t exist');
    }
    this.checkStatus();
  }

  // Check if the user is logged
  checkStatus() {
    // Uncomment this if you want to check it locally
    // this.loggedIn = true;
    // this.render();

    // Comment this if you want to check it locally
    utils.isLoggedIn({
      success: function(response) {
        this.checkCompleteProfile(response);
        this.loggedIn = true;
        this.render();
        this.setupGoogleAnalytics(response);
      }.bind(this),
      failure: function() {
        this.loggedIn = false;
        this.initLoginLinks();
      }.bind(this)
    });
  }

  // Render different templates depending on the loggin state
  render() {
    const template = (!!this.loggedIn) ? loginButtonTpl : logoutButtonTpl;
    this.$el.html(template());

    this.listeners();

    return this;
  }

  listeners() {
    const $signout = this.$el.find('#my-gfw-sign-out');
    $signout.on('click', this.logout.bind(this));
  }

  initLoginLinks() {
    var $signin = this.$el.find('.my-gfw-sign-in');
    $signin.forEach(function(v) {
      let link = `${utils.getAPIHost() + '/' + $gfwdom(v).attr('href')}`;
      $gfwdom(v).attr('href', link);
    });
  }

  // Require profile completation
  checkCompleteProfile(response) {
    const profileComplete = response.data !== null &&
      response.data.attributes.profileComplete !== false;
    // Only require from specific paths;
    const pathsRequireCompletion = [
      '/my_gfw/subscriptions/new'
    ];
    if (!profileComplete && (pathsRequireCompletion.indexOf(window.location.pathname) > -1)) {
      window.location.href = '/my_gfw';
    }
  }

  logout(e) {
    e && e.preventDefault();
    const xhr = new XMLHttpRequest();
    xhr.open('GET', `${utils.getAPIHost()}/auth/logout`, true);
    xhr.withCredentials = true;
    xhr.onload = () => {
      const responseStatus = xhr.status;
      if (responseStatus !== 200) {
        window.location.reload();
      } else {
        window.location.reload();
      }
    };

    xhr.onerror = () => {
      options.failure();
    }
    xhr.send();
  }


  showModal(e) {
    e && e.stopPropagation() && e.preventDefault();
    const modalView = new LoginModal();
    modalView.init();
  }

  setupGoogleAnalytics(response) {
    if (window.ga !== undefined) {
      window.ga('set', 'userId', response.id);
    }
  }

}

export default LoginButton;
