<div class="m-footer-subscribe">
  <div class="m-footer-subscribe-button js-footer-newsletter">STAY UPDATED</div>
</div>
<div class="wrapper">
  <div class="m-footer-list">
    <div class="m-footer-links">
      <ul class="m-footer-links-texts">
        <% for (var i = 0; i < links.options.length; i++) { %>
          <li><a href="<%= links.options[i].url %>"><%= links.options[i].title %></a></li>
        <% } %>
      </ul>
      <ul class="m-footer-links-social">
        <li>
          <a href="https://twitter.com/globalforests" target="_blank">
            <svg class="icon icon-twitter"><use xlink:href="#gfw-header-icon-twitter"></use></svg>
          </a>
        </li>
        <li>
          <a href="https://www.facebook.com/globalforests/" target="_blank">
            <svg class="icon icon-facebook"><use xlink:href="#gfw-header-icon-facebook"></use></svg>
          </a>
        </li>
        <li>
          <a href="https://www.instagram.com/globalforests/" target="_blank">
            <svg class="icon icon-instagram"><use xlink:href="#gfw-header-icon-instagram"></use></svg>
          </a>
        </li>
      </ul>
    </div>
    <div class="m-footer-links -links-contact-sitemap">
      <a class="text-button" href="/sitemap">SITEMAP</a>
      <div class="text-button m-footer-links__contact js-footer-contact-us">
        CONTACT US
        <svg class="icon icon-contact"><use xlink:href="#gfw-header-icon-contact"></use></svg>
      </div>
    </div>
  </div>

  <div class="m-footer-info">
    <div class="m-footer-partner">
      <p>A partnership convened by</p>
      <a href="http://www.wri.org/" target="_blank">
        <svg xmlns="http://www.w3.org/2000/svg" width="143" height="47"><g fill="none" fill-rule="evenodd"><path fill="#FCB80A" d="M14.73 20.4L5.25 10.9l-2.43 2.44 9.47 9.49zM18.87 24.54l-2.44 2.44 9.42 9.43 2.44-2.44zM32.03 37.72l-2.43 2.44 2.81 2.82 2.44-2.44zM11.92 4.38L9.48 6.82l2.81 2.82 2.44-2.44zM18.7 10.79l-2.43 2.44 9.34 9.36 2.44-2.44zM32.2 24.31l-2.43 2.44 9.46 9.48 2.44-2.44zM21.8 20.19l-2.74-2.74-9.56 9.58 2.73 2.74zM32 17.6l-9.3 9.33 2.72 2.73 9.31-9.32zM38.31 11.28l-2.48 2.49 2.73 2.73 2.48-2.48zM21.51 33.58l-2.73-2.73-9.3 9.32 2.72 2.74zM8.52 33.5l-2.74-2.74-2.8 2.81 2.72 2.74zM31.68 4.82l-8.75 8.76 2.73 2.74 8.75-8.77z"/><path fill="#FCB80A" d="M8.05 20.02L5.74 17.7l-5.75 5.76 12.36 12.37 2.26-2.26L4.57 23.5zM22.12 41.6L18.55 38l-2.27 2.28 5.89 5.9 12.8-12.78-2.34-2.32zM39.72 23.97l-3.19 3.18 2.32 2.32 5.62-5.63L32.03 11.4l-2.43 2.44zM11.94 16.12L22.17 5.88l3.47 3.5 2.44-2.46-5.79-5.8L9.63 13.81z"/><path fill="#666" d="M57.32 2.22c-.14-.41-.26-.68-.42-.8a1 1 0 0 0-.44-.1c-.12 0-.18 0-.18-.1 0-.08.09-.1.24-.1.58 0 1.2.03 1.3.03.1 0 .6-.03 1.24-.03.16 0 .24.03.24.1 0 .1-.1.1-.2.1s-.2 0-.28.05c-.1.04-.13.12-.13.24 0 .15.12.53.25 1.04.19.74 1.23 4.13 1.43 4.76h.04l2.17-5.84c.12-.31.19-.4.28-.4.12 0 .18.16.32.52l2.33 5.64h.03c.2-.75 1.1-3.7 1.5-5.02.07-.26.1-.5.1-.65 0-.18-.1-.34-.53-.34-.11 0-.2-.03-.2-.1 0-.08.1-.1.26-.1.6 0 1.07.03 1.17.03.08 0 .56-.03.93-.03.12 0 .2.02.2.1 0 .07-.06.1-.16.1-.11 0-.27.01-.39.06-.27.1-.4.55-.63 1.19-.51 1.41-1.69 4.98-2.24 6.66-.12.39-.17.52-.32.52-.11 0-.18-.13-.35-.55L62.55 3.6h-.02c-.2.57-1.7 4.54-2.18 5.57-.21.46-.27.6-.4.6-.11 0-.17-.13-.26-.42l-2.37-7.12m13.67 3.14c0-1.92 1.27-4.4 4.63-4.4 2.78 0 4.52 1.63 4.52 4.2 0 2.56-1.8 4.6-4.63 4.6-3.22 0-4.52-2.42-4.52-4.4m7.58.21c0-2.5-1.44-4.07-3.28-4.07-1.28 0-2.75.72-2.75 3.51 0 2.33 1.29 4.18 3.44 4.18.78 0 2.6-.38 2.6-3.62m5.66-1.2c0-1.7 0-2.01-.03-2.37-.02-.39-.1-.56-.48-.64a2.24 2.24 0 0 0-.43-.04c-.13 0-.2-.02-.2-.1s.08-.1.25-.1c.6 0 1.3.03 1.53.03l1.58-.03c.7 0 1.46.07 2.06.48.32.22.76.79.76 1.54 0 .83-.34 1.6-1.47 2.51 1 1.26 1.76 2.25 2.43 2.95.62.65 1.08.73 1.25.76.12.02.22.04.31.04.1 0 .14.03.14.08 0 .1-.08.12-.22.12h-1.06c-.63 0-.9-.06-1.2-.22a5.4 5.4 0 0 1-1.53-1.64c-.45-.62-.96-1.38-1.11-1.55-.06-.07-.12-.08-.2-.08l-.97-.02c-.06 0-.1.02-.1.09v.15c0 1.05 0 1.93.06 2.4.04.33.1.58.44.62.17.02.41.05.55.05.09 0 .13.03.13.08 0 .08-.08.12-.22.12-.65 0-1.48-.04-1.65-.04-.21 0-.91.04-1.36.04-.15 0-.23-.04-.23-.12 0-.05.05-.08.18-.08.17 0 .3-.03.4-.05.23-.04.29-.29.33-.61.06-.48.06-1.36.06-2.4V4.38m1.32.89c0 .12.02.17.1.2.23.08.57.11.85.11.45 0 .6-.04.8-.19.33-.25.65-.76.65-1.68 0-1.6-1.05-2.05-1.71-2.05-.28 0-.48.01-.6.04-.07.03-.1.07-.1.16v3.4m10.3 1.1c0 1.43 0 2.2.23 2.4.19.17.48.25 1.35.25.6 0 1.03 0 1.31-.31.14-.15.27-.46.3-.67 0-.1.03-.17.12-.17.07 0 .08.05.08.19 0 .12-.07.96-.16 1.29-.07.24-.13.3-.7.3-1.62 0-2.36-.07-3.26-.07-.26 0-.97.04-1.42.04-.14 0-.22-.04-.22-.12 0-.05.05-.08.18-.08.17 0 .3-.03.4-.05.23-.04.28-.29.33-.61.05-.48.05-1.36.05-2.4V4.38c0-1.7 0-2.01-.02-2.37-.02-.39-.11-.56-.48-.64a1.6 1.6 0 0 0-.37-.04c-.12 0-.19-.02-.19-.1s.08-.1.25-.1c.52 0 1.23.03 1.53.03l1.52-.03c.16 0 .24.02.24.1s-.07.1-.2.1-.3.01-.44.04c-.3.05-.4.24-.42.64-.02.36-.02.67-.02 2.37v1.98m7.13-1.98c0-1.7 0-2.01-.02-2.37-.02-.39-.11-.56-.48-.64a2.25 2.25 0 0 0-.44-.04c-.12 0-.19-.02-.19-.1s.08-.1.25-.1c.59 0 1.3.03 1.6.03.36 0 1.06-.03 1.73-.03 1.4 0 3.27 0 4.5 1.28A4.01 4.01 0 0 1 111 5.25c0 1.41-.6 2.49-1.22 3.13-.52.52-1.68 1.32-3.75 1.32-.82 0-1.83-.14-2.39-.14-.25 0-.96.04-1.4.04-.15 0-.23-.04-.23-.12 0-.05.04-.08.18-.08.17 0 .3-.03.4-.05.23-.04.28-.29.33-.61.05-.48.05-1.36.05-2.4V4.38m1.4 1.24c0 1.18.01 2.05.02 2.26.01.28.04.73.13.85.14.22.58.45 1.46.45 1.15 0 1.9-.22 2.58-.8.71-.62.94-1.64.94-2.8 0-1.42-.6-2.34-1.08-2.8a4.43 4.43 0 0 0-3.18-1.12c-.22 0-.63.03-.72.08-.1.04-.14.1-.14.22v3.66M58.3 22.57c0-1.7 0-2.01-.02-2.37-.02-.38-.11-.56-.48-.64a2.36 2.36 0 0 0-.44-.03c-.12 0-.19-.03-.19-.1 0-.09.08-.1.25-.1.6 0 1.3.03 1.53.03l1.58-.04c.7 0 1.46.07 2.06.48.31.22.76.8.76 1.54 0 .83-.35 1.6-1.48 2.51 1 1.26 1.77 2.26 2.43 2.95.63.65 1.09.73 1.26.76.12.03.22.04.3.04.1 0 .14.03.14.09 0 .09-.07.1-.2.1h-1.07c-.63 0-.9-.05-1.2-.2a5.4 5.4 0 0 1-1.53-1.65c-.45-.62-.96-1.38-1.11-1.55-.06-.07-.12-.08-.2-.08l-.98-.02c-.05 0-.09.02-.09.09v.16c0 1.04 0 1.92.06 2.4.03.32.1.57.44.61.17.03.41.05.55.05.08 0 .13.03.13.09 0 .08-.08.1-.22.1l-1.65-.02-1.36.03c-.15 0-.23-.03-.23-.11 0-.06.05-.1.18-.1.17 0 .3-.01.4-.04.23-.04.28-.29.33-.61.05-.48.05-1.36.05-2.4v-1.97m1.32.9c0 .11.03.16.1.2a3 3 0 0 0 .86.1c.44 0 .59-.04.8-.19.33-.24.65-.76.65-1.68 0-1.6-1.05-2.05-1.71-2.05-.28 0-.48.01-.6.05-.07.02-.1.06-.1.15v3.41m8.9-.89c0-1.7 0-2.01-.03-2.37-.02-.38-.11-.56-.48-.64a2.37 2.37 0 0 0-.44-.03c-.12 0-.19-.03-.19-.1 0-.09.08-.1.25-.1.6 0 1.3.03 1.6.03.37 0 2.6 0 2.8-.02l.49-.06c.05-.01.12-.05.18-.05.05 0 .06.05.06.1 0 .08-.05.22-.09.73 0 .12-.03.6-.05.74-.01.06-.03.13-.11.13s-.1-.06-.1-.16c0-.08-.01-.27-.07-.4-.08-.2-.2-.34-.75-.4-.2-.03-1.37-.05-1.59-.05-.06 0-.08.03-.08.1v2.85c0 .08.01.12.08.12.25 0 1.53 0 1.8-.02.26-.02.43-.06.53-.17.08-.1.12-.15.18-.15.04 0 .08.03.08.1 0 .06-.06.24-.1.81l-.04.75c0 .1 0 .21-.1.21-.08 0-.1-.04-.1-.1-.01-.1-.01-.25-.05-.4-.05-.22-.2-.4-.62-.44-.22-.02-1.32-.03-1.6-.03-.05 0-.06.05-.06.11v2.63c.02.77.2.94 1.35.94.29 0 .76 0 1.05-.14.29-.13.42-.37.5-.83.02-.12.05-.16.12-.16.1 0 .1.08.1.2 0 .25-.1 1.02-.15 1.24-.08.3-.18.3-.6.3-1.7 0-2.45-.07-3.1-.07l-1.42.03c-.14 0-.22-.03-.22-.11 0-.06.04-.1.18-.1.17 0 .3-.01.4-.04.22-.04.28-.29.33-.61.05-.48.05-1.36.05-2.4v-1.97m8.22 5.1c-.18-.08-.22-.14-.22-.39 0-.61.05-1.29.06-1.47.01-.16.05-.29.13-.29.1 0 .12.1.12.2 0 .14.04.38.1.57.24.83.9 1.13 1.6 1.13 1 0 1.5-.69 1.5-1.28 0-.55-.17-1.08-1.1-1.8l-.51-.4c-1.24-.96-1.66-1.75-1.66-2.66 0-1.23 1.03-2.11 2.58-2.11.73 0 1.2.1 1.5.19.1.02.15.05.15.13 0 .15-.05.47-.05 1.35 0 .24-.03.33-.12.33-.08 0-.11-.06-.11-.2 0-.1-.06-.45-.3-.74-.16-.21-.48-.55-1.21-.55-.83 0-1.33.48-1.33 1.16 0 .51.25.9 1.18 1.61l.32.24c1.34 1.04 1.83 1.79 1.83 2.86 0 .65-.24 1.42-1.05 1.95-.56.36-1.19.46-1.78.46-.65 0-1.15-.08-1.63-.3m7.66-4.1c0-1.92 1.27-4.4 4.63-4.4 2.78 0 4.52 1.63 4.52 4.2 0 2.57-1.8 4.6-4.63 4.6-3.22 0-4.52-2.41-4.52-4.4m7.58.21c0-2.5-1.44-4.06-3.28-4.06-1.29 0-2.75.71-2.75 3.5 0 2.34 1.29 4.19 3.43 4.19.79 0 2.6-.39 2.6-3.63m5.3-1.2c0-1.7 0-2.01-.03-2.37-.02-.38-.1-.56-.48-.64a2.37 2.37 0 0 0-.44-.03c-.12 0-.19-.03-.19-.1 0-.09.08-.1.25-.1.6 0 1.3.03 1.64.03.26 0 .97-.04 1.37-.04.17 0 .25.02.25.1s-.07.1-.18.1c-.12 0-.2.02-.33.04-.3.05-.39.24-.41.64-.02.36-.02.67-.02 2.37v1.57c0 1.63.32 2.31.87 2.76.5.42 1.02.46 1.4.46.5 0 1.1-.16 1.54-.6.62-.62.65-1.63.65-2.78v-1.4c0-1.7 0-2.02-.02-2.38-.02-.38-.11-.56-.48-.64a2.2 2.2 0 0 0-.4-.03c-.13 0-.2-.03-.2-.1 0-.09.08-.1.24-.1.57 0 1.28.03 1.29.03.13 0 .84-.04 1.27-.04.16 0 .24.02.24.1s-.07.1-.2.1c-.12 0-.2.02-.33.04-.3.05-.39.24-.41.64-.02.36-.02.67-.02 2.37v1.2c0 1.25-.13 2.57-1.07 3.38-.8.68-1.6.8-2.32.8-.6 0-1.67-.03-2.49-.77-.57-.51-1-1.34-1-2.97v-1.64m11.78 0c0-1.7 0-2.01-.02-2.37-.03-.38-.12-.56-.48-.64a2.37 2.37 0 0 0-.44-.03c-.12 0-.2-.03-.2-.1 0-.09.09-.1.25-.1.6 0 1.3.03 1.54.03l1.58-.04c.7 0 1.45.07 2.06.48.31.22.76.8.76 1.54 0 .83-.35 1.6-1.48 2.51 1 1.26 1.77 2.26 2.43 2.95.63.65 1.08.73 1.25.76.12.03.23.04.32.04s.13.03.13.09c0 .09-.08.1-.21.1h-1.07c-.62 0-.9-.05-1.2-.2-.47-.26-.9-.79-1.53-1.65-.44-.62-.96-1.38-1.1-1.55-.06-.07-.13-.08-.2-.08l-.98-.02c-.06 0-.09.02-.09.09v.16c0 1.04 0 1.92.06 2.4.03.32.1.57.43.61.17.03.42.05.55.05.09 0 .14.03.14.09 0 .08-.08.1-.23.1l-1.64-.02-1.37.03c-.15 0-.22-.03-.22-.11 0-.06.04-.1.18-.1.16 0 .3-.01.4-.04.22-.04.28-.29.32-.61.06-.48.06-1.36.06-2.4v-1.97m1.32.9c0 .11.02.16.1.2a3 3 0 0 0 .85.1c.45 0 .6-.04.8-.19.33-.24.66-.76.66-1.68 0-1.6-1.06-2.05-1.72-2.05-.28 0-.48.01-.59.05-.08.02-.1.06-.1.15v3.41m9 3.27a4.24 4.24 0 0 1-1.39-3.3c0-.77.24-2.09 1.31-3.07.8-.75 1.87-1.2 3.54-1.2.7 0 1.1.05 1.62.12.43.05.78.16 1.12.19.12.01.17.07.17.14 0 .08-.04.22-.06.61-.02.37-.01.99-.03 1.21-.01.17-.03.26-.14.26-.09 0-.1-.1-.1-.25a1.6 1.6 0 0 0-.45-1.03c-.37-.4-1.24-.7-2.27-.7-.97 0-1.6.25-2.1.7-.82.75-1.03 1.82-1.03 2.9 0 2.67 2.02 4 3.53 4 1 0 1.6-.12 2.04-.63.2-.22.34-.54.38-.74.04-.18.06-.23.15-.23.08 0 .1.08.1.17 0 .14-.13 1.11-.25 1.5-.05.18-.1.24-.29.32-.45.18-1.3.26-2.01.26a5.6 5.6 0 0 1-3.84-1.23m10.54-4.16c0-1.7 0-2.01-.02-2.37-.02-.38-.11-.56-.48-.64a2.35 2.35 0 0 0-.44-.03c-.12 0-.19-.03-.19-.1 0-.09.08-.1.25-.1.6 0 1.3.03 1.61.03.36 0 2.58 0 2.8-.02l.48-.06c.06-.01.12-.05.18-.05.05 0 .07.05.07.1 0 .08-.06.22-.1.73 0 .12-.03.6-.05.74-.01.06-.03.13-.11.13s-.1-.06-.1-.16c0-.08-.01-.27-.07-.4-.08-.2-.19-.34-.75-.4a35.7 35.7 0 0 0-1.59-.05c-.05 0-.08.03-.08.1v2.85c0 .08.01.12.08.12.25 0 1.53 0 1.8-.02.26-.02.43-.06.53-.17.08-.1.12-.15.18-.15.04 0 .08.03.08.1 0 .06-.06.24-.1.81l-.04.75c0 .1 0 .21-.1.21-.08 0-.1-.04-.1-.1-.01-.1-.01-.25-.04-.4-.06-.22-.22-.4-.63-.44-.21-.02-1.32-.03-1.59-.03-.06 0-.07.05-.07.11v2.63c.03.77.2.94 1.35.94.29 0 .76 0 1.05-.14.29-.13.42-.37.5-.83.02-.12.05-.16.12-.16.1 0 .1.08.1.2 0 .25-.1 1.02-.15 1.24-.08.3-.18.3-.6.3-1.7 0-2.45-.07-3.1-.07l-1.42.03c-.14 0-.22-.03-.22-.11 0-.06.04-.1.18-.1.17 0 .3-.01.4-.04.23-.04.28-.29.33-.61.05-.48.05-1.36.05-2.4v-1.97m8.55 4.88c-.18-.08-.2-.14-.2-.38 0-.62.04-1.3.05-1.47 0-.17.04-.3.13-.3.1 0 .11.11.11.2 0 .14.05.38.1.57.25.83.91 1.13 1.6 1.13 1.01 0 1.5-.68 1.5-1.28 0-.54-.16-1.07-1.1-1.79l-.5-.4c-1.24-.97-1.66-1.75-1.66-2.66 0-1.23 1.03-2.12 2.58-2.12.73 0 1.2.11 1.5.2.1.01.15.05.15.13 0 .14-.05.47-.05 1.34 0 .25-.03.34-.12.34-.08 0-.11-.07-.11-.2 0-.1-.06-.45-.3-.74-.16-.22-.49-.55-1.21-.55-.83 0-1.33.48-1.33 1.15 0 .52.25.9 1.18 1.62l.31.23c1.35 1.04 1.84 1.8 1.84 2.86 0 .65-.25 1.42-1.05 1.95-.56.36-1.19.46-1.78.46-.65 0-1.15-.08-1.64-.29M58.31 40.78c0-1.7 0-2.02-.02-2.38-.02-.38-.13-.57-.38-.63a1.6 1.6 0 0 0-.4-.04c-.11 0-.18-.03-.18-.12 0-.06.09-.09.27-.09.42 0 1.13.04 1.45.04.28 0 .94-.04 1.37-.04.14 0 .23.03.23.1 0 .08-.06.1-.18.1-.1 0-.2.02-.33.04-.3.06-.4.25-.42.64-.02.36-.02.67-.02 2.38v1.97c0 1.09 0 1.97.05 2.46.03.3.1.5.44.54.16.03.4.05.57.05.13 0 .18.03.18.09 0 .08-.09.11-.2.11-.75 0-1.45-.03-1.76-.03l-1.4.03c-.15 0-.23-.03-.23-.11 0-.06.05-.1.18-.1.17 0 .3-.01.4-.04.23-.04.3-.23.33-.56.05-.47.05-1.35.05-2.44v-1.97m7.45 3.7c.02.87.16 1.16.39 1.24.19.07.4.08.58.08.12 0 .2.02.2.09 0 .09-.1.11-.27.11-.72 0-1.17-.03-1.38-.03-.1 0-.63.03-1.21.03-.15 0-.25-.01-.25-.11 0-.07.07-.1.18-.1.14 0 .35 0 .5-.05.3-.09.34-.41.35-1.39l.1-6.64c0-.22.03-.38.15-.38s.22.15.41.35c.14.15 1.84 1.98 3.47 3.6.76.76 2.27 2.38 2.46 2.56h.06l-.11-5.04c-.02-.68-.11-.9-.38-1-.17-.07-.44-.07-.6-.07-.13 0-.18-.04-.18-.1 0-.1.13-.1.3-.1.58 0 1.11.03 1.35.03.12 0 .55-.04 1.1-.04.14 0 .25.02.25.1 0 .07-.06.1-.2.1-.1 0-.2 0-.33.04-.32.09-.4.33-.42.95l-.12 7.08c0 .24-.05.35-.15.35-.12 0-.25-.13-.38-.25-.7-.67-2.13-2.14-3.3-3.3-1.22-1.2-2.46-2.61-2.66-2.82h-.04l.13 4.7m11.11 1.4c-.18-.08-.21-.14-.21-.39 0-.61.04-1.28.05-1.46.02-.17.05-.3.14-.3.1 0 .11.1.11.2 0 .14.05.38.1.57.25.83.9 1.13 1.6 1.13 1.01 0 1.5-.68 1.5-1.28 0-.55-.17-1.07-1.1-1.8l-.51-.4c-1.23-.96-1.66-1.75-1.66-2.65 0-1.24 1.03-2.12 2.59-2.12.73 0 1.2.11 1.49.19.1.02.15.05.15.13 0 .15-.04.47-.04 1.35 0 .24-.03.34-.12.34-.08 0-.12-.07-.12-.2 0-.1-.05-.46-.29-.75-.16-.2-.49-.55-1.22-.55-.82 0-1.33.49-1.33 1.16 0 .51.26.9 1.19 1.61l.31.24c1.34 1.04 1.84 1.8 1.84 2.86 0 .65-.25 1.42-1.06 1.95-.55.36-1.18.46-1.77.46-.65 0-1.16-.08-1.64-.3m10.38-7.7l-1.67.04c-.65.02-.92.08-1.09.32-.1.17-.16.3-.19.4-.02.08-.05.13-.12.13-.08 0-.1-.06-.1-.18 0-.18.21-1.2.23-1.29.04-.14.07-.21.14-.21.09 0 .2.11.48.13.32.04.75.06 1.12.06h4.43c.72 0 .99-.11 1.07-.11.08 0 .1.06.1.23l-.04 1.3c-.01.11-.03.18-.1.18-.09 0-.11-.05-.12-.22l-.01-.13c-.03-.29-.33-.6-1.32-.62l-1.42-.04v4.6c0 1.03 0 1.92.06 2.4.03.31.1.56.44.6.16.03.4.05.57.05.12 0 .18.03.18.09 0 .08-.1.11-.21.11-.74 0-1.45-.03-1.76-.03L86.5 46c-.15 0-.23-.03-.23-.11 0-.06.05-.1.18-.1.17 0 .3-.01.4-.04.23-.04.3-.29.33-.61.06-.47.06-1.36.06-2.4v-4.59m8.21 2.63c0-1.7 0-2.02-.02-2.38-.02-.38-.14-.57-.38-.63a1.6 1.6 0 0 0-.4-.04c-.12 0-.18-.03-.18-.12 0-.06.09-.09.27-.09.42 0 1.13.04 1.45.04.28 0 .94-.04 1.37-.04.14 0 .23.03.23.1 0 .08-.07.1-.18.1-.11 0-.2.02-.33.04-.3.06-.4.25-.42.64-.02.36-.02.67-.02 2.38v1.97c0 1.09 0 1.97.05 2.46.03.3.1.5.44.54.16.03.4.05.57.05.13 0 .18.03.18.09 0 .08-.09.11-.21.11-.74 0-1.44-.03-1.75-.03l-1.4.03c-.15 0-.23-.03-.23-.11 0-.06.04-.1.18-.1.17 0 .3-.01.4-.04.22-.04.3-.23.33-.56.05-.47.05-1.35.05-2.44v-1.97m8.3-2.63l-1.66.05c-.65.02-.92.08-1.09.32-.1.17-.17.3-.19.4-.02.08-.05.13-.12.13-.08 0-.1-.06-.1-.18 0-.18.21-1.2.23-1.29.04-.14.07-.21.14-.21.09 0 .2.11.48.13.32.04.75.06 1.12.06H107c.72 0 .99-.11 1.08-.11.07 0 .09.06.09.23l-.04 1.3c0 .11-.03.18-.1.18-.09 0-.11-.05-.12-.22l-.01-.13c-.03-.29-.33-.6-1.32-.62l-1.41-.04v4.6c0 1.03 0 1.92.05 2.4.04.31.1.56.44.6.15.03.4.05.57.05.12 0 .18.03.18.09 0 .08-.1.11-.21.11-.74 0-1.45-.03-1.76-.03l-1.41.03c-.15 0-.23-.03-.23-.11 0-.06.05-.1.18-.1.17 0 .3-.01.4-.04.23-.04.3-.29.33-.61.06-.47.06-1.36.06-2.4v-4.59m7.73 2.63c0-1.7 0-2.02-.02-2.38-.02-.38-.11-.56-.48-.64a2.27 2.27 0 0 0-.44-.03c-.12 0-.19-.03-.19-.1 0-.08.08-.1.25-.1.59 0 1.3.03 1.63.03.27 0 .97-.04 1.38-.04.17 0 .24.03.24.1 0 .08-.06.1-.17.1-.13 0-.2.02-.33.04-.3.06-.4.25-.42.64-.02.36-.02.67-.02 2.38v1.57c0 1.62.33 2.3.88 2.75.5.42 1.01.46 1.4.46.49 0 1.1-.15 1.54-.6.61-.62.65-1.63.65-2.78v-1.4c0-1.7 0-2.02-.02-2.38-.03-.38-.12-.56-.48-.64-.1-.02-.28-.03-.4-.03-.13 0-.2-.03-.2-.1 0-.08.08-.1.24-.1.57 0 1.27.03 1.28.03.14 0 .84-.04 1.28-.04.16 0 .24.03.24.1 0 .08-.07.1-.2.1s-.2.02-.33.04c-.3.06-.4.25-.41.64-.03.36-.03.67-.03 2.38v1.2c0 1.24-.12 2.56-1.06 3.37-.8.68-1.6.8-2.33.8-.6 0-1.67-.03-2.48-.77-.57-.51-1-1.34-1-2.97v-1.63m13.27-2.63l-1.67.05c-.65.02-.92.08-1.09.32-.11.17-.17.3-.19.4-.02.08-.06.13-.12.13-.08 0-.1-.06-.1-.18 0-.18.2-1.2.23-1.29.04-.14.07-.21.14-.21.09 0 .2.11.48.13.32.04.75.06 1.12.06H128c.71 0 .98-.11 1.07-.11.08 0 .1.06.1.23l-.04 1.3c-.01.11-.03.18-.1.18-.1 0-.11-.05-.12-.22l-.02-.13c-.02-.29-.32-.6-1.32-.62l-1.4-.04v4.6c0 1.03 0 1.92.05 2.4.03.31.1.56.44.6.15.03.4.05.57.05.12 0 .18.03.18.09 0 .08-.1.11-.22.11-.74 0-1.44-.03-1.75-.03l-1.42.03c-.14 0-.22-.03-.22-.11 0-.06.05-.1.18-.1.17 0 .3-.01.4-.04.23-.04.3-.29.33-.61.06-.47.06-1.36.06-2.4v-4.59m8.2 2.63l-.01-2.38c-.03-.38-.12-.56-.48-.64a2.28 2.28 0 0 0-.44-.03c-.12 0-.2-.03-.2-.1 0-.08.09-.1.25-.1.6 0 1.3.03 1.62.03l2.8-.01.48-.07c.05-.01.12-.04.17-.04.06 0 .07.04.07.1 0 .07-.05.2-.09.72 0 .12-.03.61-.05.74-.01.06-.04.13-.12.13-.07 0-.1-.06-.1-.16 0-.08 0-.27-.06-.4-.08-.2-.2-.34-.75-.4-.2-.03-1.37-.05-1.6-.05-.05 0-.07.03-.07.11v2.84c0 .08.01.12.08.12.24 0 1.53 0 1.79-.02.27-.02.43-.06.54-.17.07-.09.12-.14.17-.14.05 0 .08.02.08.09 0 .06-.05.24-.09.81l-.04.75c0 .1 0 .22-.1.22-.08 0-.1-.05-.1-.1-.01-.12-.01-.26-.05-.4-.05-.23-.21-.4-.62-.44a34.1 34.1 0 0 0-1.6-.04c-.05 0-.06.05-.06.11v2.63c.02.77.2.94 1.34.94.3 0 .76 0 1.05-.14.3-.13.43-.37.5-.83.03-.12.05-.16.13-.16.1 0 .1.09.1.2 0 .26-.1 1.02-.15 1.24-.08.3-.18.3-.6.3-1.7 0-2.45-.07-3.1-.07l-1.42.03c-.15 0-.22-.03-.22-.11 0-.06.04-.1.18-.1.16 0 .3-.01.4-.04.22-.04.28-.29.32-.61.06-.47.06-1.36.06-2.4v-1.96"/></g></svg>
      </a>
    </div>
    <div class="m-footer-logos slider js_slider" id="my-gfw-slider">
      <p>Partners</p>
      <div class="frame js_frame">
        <ul class="slides js_slides">
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="Agence française de développement international" href="http://www.afd.fr/home"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/afc.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="Airbus" href="http://airbusdefenceandspace.com/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/airbus.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="Agro satélite" href="http://agrosatelite.com.br/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/agrosatelite.png" /></a></li>
          <li class="js_slide"><a target='_blank' rel="noreferrer" title="Astro Digital" href='https://astrodigital.com/'><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/astrodigital.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="Badan Nasional Penanggulangan Bencana" href="http://bnpb.go.id/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/bnpb.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.cisl.cam.ac.uk/banking"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/bei.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://blueraster.com/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/blueraster.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.cisl.cam.ac.uk/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/cambridge.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.cargill.com/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/cargill.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://cartodb.com/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/cartodb.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.cgdev.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/centerforglobaldevelopment.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://foreststreesagroforestry.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/cgiar.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://ciat.cgiar.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/ciat.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="Climate and Land Use Alliance" href="http://www.climateandlandusealliance.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/clua.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.conafor.gob.mx/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/conafor.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="Conservation international" href="http://www.conservation.org"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/conservationinternational.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="https://www.digitalglobe.com/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/digitalglobe.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.esri.com/gfw"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/esri.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://earthjournalism.net/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/ejn.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://ewmi.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/ewmi.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.thegef.org/gef/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/gef.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="https://www.genfound.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/generation.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://globalforestwatch.ca/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/globalforestwatchcanada.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://earthengine.google.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/google.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.haka.or.id/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/haka.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.icf.gob.hn/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/icf.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.iadb.org/en/inter-american-development-bank,2837.html"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/idb.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.idbinvest.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/idbinvest.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.imazon.org.br/pagina-inicial-en?set_language=en&amp;cl=en"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/imazon.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.inab.gob.gt/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/inab.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://europe.croklaan.com/taking-responsibility"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/ioi.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.eorc.jaxa.jp/jjfast/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/jjfast.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.janegoodall.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/thejanegoodallinstitute.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="Laboratório de Processamento de Imagens e Geoprocessamento" href="https://www.lapig.iesa.ufg.br/lapig/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/lapig.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="https://www.macfound.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/macarthur.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.minepat.gov.cm/index.php/en/?lang=en"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/minepat.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="Le Ministère des Forêts et de la Faune" href="http://www.minfof.cm/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/ministiere.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="Moises Bertoni" href="http://www.mbertoni.org.py/v1/en"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/moises.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="Mongabay" href="http://www.mongabay.com/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/mongabay.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.moore.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/moore.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="ONG Muyissi" href="http://www.ongmuyissi.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/muyissi.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="https://www.regjeringen.no/en/topics/climate-and-environment/climate/klima--og-skogprosjektet/id2000712/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/norwegianministri.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.opendevelopmentcambodia.net/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/opendevcam.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://orbitalinsight.com/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/orbital.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://osfac.net/index.php?lang=en"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/osfac.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.osinfor.gob.pe/portal/index.php"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/osinfor.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.rainforestfoundationuk.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/rfuk.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://raisg.socioambiental.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/raisg.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.redd-indonesia.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/redd.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.reforestamosmexico.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/rm.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.resolv.org/site-BiodiversityWildlifeSolutions/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/resolve.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="RSPO" href="http://www.rspo.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/rspo.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="RTRS" href="http://www.responsiblesoy.org/?lang=en"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/rtrs.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.scanex.ru/en/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/scannex.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.sentinel-hub.com/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/sentinelhub.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.tiliafund.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/thetiliafund.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.transparentworld.ru/ru/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/tipos.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.gov.uk/government/organisations/department-for-international-development"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/ukaid.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.unep.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/unep.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="UNEP-WCMC" href="http://www.unep-wcmc.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/unepwcmc.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.unilever.com/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/unilever.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.geog.umd.edu/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/universityofmaryland.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.usaid.gov/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/usaid.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://vizzuality.com/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/vizzuality.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="Woods Hole Research Center" href="http://www.whrc.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/whrc.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.wilburforce.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/wilburforce.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" title="Alliance for Zero Extinction" href="http://www.zeroextinction.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/zeroextinction.png" /></a></li>
          <li class="js_slide"><a target="_blank" rel="noreferrer" href="http://www.zsl.org/"><img src="https://cdn.rawgit.com/Vizzuality/gfw-assets/12915d2317293a4b912b9cf3eb5cdb3416f62ea6/src/images/logos/zsl.png" /></a></li>
        </ul>
      </div>
      <span class="js_prev prev"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-footer-arrow"></use></svg></span>
      <span class="js_next next"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-footer-arrow"></use></svg></span>
    </div>
  </div>
  <div class="m-footer-terms">
    <a href="/terms">Terms of Service</a> ·
    <a href="http://stats.pingdom.com/ghabapk9rihc" target="_blank">Global Forest Watch System Status</a>
  </div>
</div>
