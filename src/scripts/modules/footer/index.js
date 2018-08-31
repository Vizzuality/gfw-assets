'use strict';

import { lory } from 'lory.js';
import footerTpl from './footer.tpl';
import footerIconsTpl from './footer-icons.tpl';

const sliderPause = 5000;
let numberScroll = 1;
if (window.innerWidth > 850) {
  numberScroll = 4;
}
const sliderOptions = {
  enableMouseEvents: true,
  infinite: 4,
  slidesToScroll: numberScroll
};

const links = [
  {
    options: [
      {
        title: 'GFW',
        url: 'http://www.globalforestwatch.org/',
      },
      {
        title: 'Blog',
        url: 'http://blog.globalforestwatch.org/',
      },
      {
        title: 'How to portal',
        url: 'http://www.globalforestwatch.org/howto/',
      },
    ],
  },
];

/**
 * Footer
 * @param  {window} root
 * @return {Class}
 */
class Footer {

  constructor() {
    this.el = document.getElementById('footerGfw');
    if (!this.el) {
      throw new Error('element #footerGfw doesn\'t exist');
    }

    this.handlers = {
      cancelTimer: this.cancelTimer.bind(this),
      initTimer: this.initTimer.bind(this)
    };

    this.render();
  }

  render() {
    this.site = window.liveSettings.site;
    this.el.innerHTML = footerTpl({ links: links[0] }) + footerIconsTpl();
    this.sliderContainer = document.getElementById('my-gfw-slider');
    this.slidesContainer = document.querySelector('.frame');
    this.initSlider();

    return this;
  }

  initSlider() {
    this.slider = lory(this.sliderContainer, sliderOptions);

    this.sliderContainer.addEventListener('before.lory.slide', this.handlers.cancelTimer);
    this.sliderContainer.addEventListener('after.lory.slide', this.handlers.initTimer);
    this.sliderContainer.addEventListener('mouseover', this.handlers.cancelTimer);
    this.sliderContainer.addEventListener('mouseout', this.handlers.initTimer);

    this.initTimer();
  }

  initTimer() {
    this.cancelTimer();
    if (!this.sliderTimer) {
      this.sliderTimer = setInterval(this.slider.next.bind(this.slider), sliderPause);
    }
  }

  cancelTimer() {
    if (this.sliderTimer) {
      clearInterval(this.sliderTimer);
      this.sliderTimer = null;
    }
  }
}

export default Footer;
