/**
 * Utils
 * @param  {window} root
 * @return {Object}
 */
const menuOptions = {
  getOptions() {
    const logoLink = document.getElementById('link-logo-menu');
    const path = window.location.pathname;
    const navOptions = window.liveSettings.menuOptions;
    let siteStyles;
    let menuOptionsNav = '';
    if (navOptions && navOptions.options && navOptions.options.length) {
      for (let i = 0; i < navOptions.options.length; i += 1) {
        const options = navOptions.options[i];
        if (options.title === 'logo') {
          logoLink.setAttribute('href', options.url);
        } else {
          let subMenu = '';
          if (options.subMenu) {
            subMenu += '<div class="triangle"></div><ul class="nav-sub-menu">';
            options.subMenu.forEach(o => {
              subMenu += `<li><a href="${o.path}">${o.label}</a></li>`;
            });
            subMenu += '</ul>';
          }
          menuOptionsNav += `
            <li class="${path === options.url || path === options.url + '/' ? siteStyles : ''}" data-menu="${options.url || options.title}">
              ${options.url ? `<a class="option-menu" href="${options.url}"> ${options.title} </a>` : `<span>${options.title}</span>`}
              ${subMenu}
            </li>`;
        }
      }
    }
    return menuOptionsNav;
  },
};

export default menuOptions;
