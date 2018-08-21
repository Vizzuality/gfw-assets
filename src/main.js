'use strict';

/**
 * Main file:
 * In this we are going to initialize all modules
 * @param  {window} root
 */

require('core-js/fn/array/from');

import Header from './scripts/modules/header';
import Footer from './scripts/modules/footer';
import Contact from './scripts/modules/contact';

// Add styles
import './styles/fonts.css';
import './styles/global.scss';

const init = () => {
  // Adding header
  new Header();

  // Adding footer
  new Footer();

  // Adding contact
  new Contact();
};

if (!!document.readyState && (document.readyState === 'complete' || document.readyState === 'interactive')) {
  init();
} else {
  document.addEventListener('DOMContentLoaded', init);
}
