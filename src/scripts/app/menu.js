window.GFW = window.GFW || {};
window.GFW.NavBar = window.GFW.NavBar || {};

(function(gfw, root) {

  var $ = root.GFW.$;

gfw.menuGFW = {
  init: function(params) {
    this.cacheVars();
    // Choose the menu you want to render
    this.switchMenu();
    // Print it
    this.printMenu();
  },

  cacheVars: function() {
    this.$mobileMenu = $('#submenuMenuMobile');
  },

  switchMenu: function() {
    switch(location.hostname) {
      case 'localhost':
        this.menu = gfw.menujsonGFW['default'];
      break;

      case 'climate.globalforestwatch.org':
        this.menu = gfw.menujsonGFW['climate'];
      break;

      case 'howto.globalforestwatch.org':
        this.menu = gfw.menujsonGFW['howto'];
      break;

      default:
        this.menu = gfw.menujsonGFW['default'];
    }
  },

  printMenu: function() {
    this.$mobileMenu.html(tmplGFW('mobileMenuTPL',{ menu: this.menu }));
  }
}

})(window.GFW.NavBar, window);