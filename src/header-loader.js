// Load fonts
WebFontConfig = {
  google: { families: [ 'Fira+Sans:300,400,500:latin' ] }
};
(function() {
  var wf = document.createElement('script');
  wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
    '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
  wf.type = 'text/javascript';
  wf.async = 'true';
  var s = document.getElementsByTagName('script')[0];
  s.parentNode.insertBefore(wf, s);
})(); 


// Google translate
function googleTranslateElementInit() {
  new google.translate.TranslateElement(
    {
      pageLanguage: '',
      includedLanguages: 'ar,es,en,fr,id,pt,ru,zh-CN,de,uk,ro,tr,it,hi,km',
      layout: google.translate.TranslateElement.InlineLayout.SIMPLE,
      autoDisplay: false
    },
    'google_translate_element');
}


// Load html & css & translate script
window.onload = function () {
    var scriptPram = document.getElementById('loader-gfw');
    var current = scriptPram.getAttribute('data-current');

    var links = {
        htmlHeader: 'https://cdn.rawgit.com/simbiotica/gfw_assets/develop/src_develop/header.html',
        htmlFooter: 'https://cdn.rawgit.com/simbiotica/gfw_assets/develop/src_develop/footer.html',
        slick: 'http://cdn.jsdelivr.net/jquery.slick/1.3.15/slick.min.js',
        css: 'https://cdn.rawgit.com/simbiotica/gfw_assets/develop/src_develop/gfw-styles.css',
        translate: 'http://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit'
    }

    var footer = document.getElementById('footerGfw'),
        header = document.getElementById('headerGfw'),
        head = document.head || document.getElementsByTagName('head')[0], 
        xhrHeader = new XMLHttpRequest(),
        xhrFooter = new XMLHttpRequest(),
        xhrCss = new XMLHttpRequest();
        xhrSlick = new XMLHttpRequest();
        href = location.href;

    xhrCss.open("GET", links.css, true);
    xhrCss.send();



    xhrCss.onreadystatechange = function (e) { 
        if (xhrCss.readyState == 4 && xhrCss.status == 200) {
            var style = document.createElement('style');
                style.type = 'text/css';
                style.appendChild(document.createTextNode(xhrCss.responseText));
            // Append to header
            head.appendChild(style);
            xhrHeader.open("GET", links.htmlHeader, true);
            xhrHeader.send();
            xhrFooter.open("GET", links.htmlFooter, true);
            xhrFooter.send();
        }
    }

    xhrHeader.onreadystatechange = function (e) { 
        if (xhrHeader.readyState == 4 && xhrHeader.status == 200) {
            header.innerHTML = xhrHeader.responseText;
            headerUl = document.getElementById('headerUl');
            $(current).addClass('current');
            var translate = document.createElement('script');
                translate.type = 'text/javascript';
                translate.src = links.translate;
            // Append to header
            head.appendChild(translate);
            init(true, false);
        }
    }
    xhrFooter.onreadystatechange = function (e) { 
        if (xhrFooter.readyState == 4 && xhrFooter.status == 200) {
            footer.innerHTML = xhrFooter.responseText;
            init(false,true);
            xhrSlick.open("GET", links.slick, true);
            xhrSlick.send();
        }
    }

    xhrSlick.onreadystatechange = function (e) { 
        if (xhrSlick.readyState == 4 && xhrSlick.status == 200) {
          var script = document.createElement("script") ;
              script.setAttribute("type","text/javascript") ;
          var text = document.createTextNode(xhrSlick.responseText) ;
              script.appendChild(text) ;

          var head = document.getElementsByTagName("head")[0] ;
              head.insertBefore(script,head.firstChild) ;

          setTimeout(initSlick,500);
        }
    }



};

// MOBILE MENU //
var headerLoad = false;
var footerLoad = false;
function init(_header,_footer, _slick){
  headerLoad = headerLoad || _header;
  footerLoad = footerLoad || _footer;

  // HEADER
  if (headerLoad && footerLoad) {
    $el = $('#headerView');
    $htmlbody = $('html,body');
    $window = $(window);
    $navMobile = $('#nav-mobile');
    $footer = $('#footerMenu');
    $siteMap = $('#siteMap');
    $mobileMenu = $('#mobileMenu');
    $translate = $('#google_translate_element');
    createMenu();
    $window.on('resize',createMenu); 
    $('#btn-menu').on('click', toggleMenu);
    
  }
}

function initSlick () {
  $('#footer-logos').slick({
      infinite: true,
      slidesToShow: 5,
      slidesToScroll: 5,
      speed: 500,
      autoplay: true,
      autoplaySpeed: 3000
  });    
}


function toggleMenu(e){
  $(e.currentTarget).toggleClass('active');
  if ($(e.currentTarget).hasClass('active')) {
    $htmlbody.addClass('active');
    $el.addClass('active');
    $navMobile.addClass('active');
  }else{
    $htmlbody.removeClass('active');
    $el.removeClass('active');
    $navMobile.removeClass('active');
  }
}

function createMenu(){
  if ($window.width() > 850) {
    $footer.appendTo($siteMap);
    $translate.appendTo($('#google_translate_element_box1'));
  }else{
    $footer.appendTo($mobileMenu);
    $translate.appendTo($('#google_translate_element_box2'));
  }
}