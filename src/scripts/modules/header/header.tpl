<div class="namespace-gfw-header">
  <header class="m-header">
    <nav class="m-header-nav-container">
      <div class="nav-wrapper">
        <div class="logo-sections-container">
          <a href="/" id="link-logo-menu">
            <div class="logo-menu"></div>
          </a>
          <ul class="nav-sections"></ul>
        </div>
        <div class="options-container">
          <ul class="nav-options">
            <li class="-js-open-menu open-menu-button open-menu-button-language" data-submenu="#language-sub-menu">
              <div class="triangle lang-triangle"></div>
              <div id="transifexTranslateElement" class="m-transifex">
              </div>
              <div id="googleTranslate">
              </div>
            </li>
            <li class="-js-open-menu open-menu-button open-menu-button-login" data-submenu="#login-sub-menu" id="my-gfw-container">
              My gfw
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-h-mygfw"></use></svg>
              <div id="login-sub-menu" class="m-header-sub-menu-login sub-menu">
                <p>Log in is required so you can view, manage, and delete your subscriptions. Questions? <a href="mailto:gfw@wri.org">Contact us</a>.</p>
                <ul>
                  <a href="auth/twitter?applications=gfw" class="my-gfw-sign-in">
                    <li class="my-gfw-sign-in-twitter login-item -twitter ">Log in with Twitter</li>
                  </a>
                  <a href="auth/facebook?applications=gfw" class="my-gfw-sign-in">
                    <li class="my-gfw-sign-in-facebook login-item -facebook">Log in with Facebook</li>
                  </a>
                  <a href="auth/google?applications=gfw" class="my-gfw-sign-in">
                    <li class="my-gfw-sign-in-google login-item -google">Log in with Google</li>
                  </a>
                </ul>
              </div>
            </li>
            <li class="-js-open-menu open-menu-button open-menu-button-dashboard" data-submenu="#dashboard-sub-menu">
              <span class="mobile-title" data-submenu="#dashboard-sub-menu">Menu</span>
              <span class="desktop-title -js-open-menu open-menu-button open-menu-button-dashboard" data-submenu="#dashboard-sub-menu">More</span>
              <svg class="close-icon"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-h-explore"></use></svg>
              <svg class="open-icon"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-h-close"></use></svg>
              <svg class="menu-mobile-icon"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-menu"></use></svg>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="m-header-sub-menu-dashboard sub-menu" id="dashboard-sub-menu">
      <div class="nav-sub-menu-container">
        <div class="form-search-container">
          <form class="search-container" id="search-container" action="https://www.globalforestwatch.org/search">
            <input type="text" name="query" id="search-input" placeholder="SEARCH"/>
            <button type="submit"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-h-search"></use></svg></button>
          </form>
          <ul class="mobile-nav-sections"></ul>
        </div>
        <div class="applications-container">
          <h3>OTHER APPLICATIONS</h3>
          <div class=" boxes-container">
            <a href="http://www.globalforestwatch.org/" target="_blank" class="box gfw-global"></a>
            <a href="http://climate.globalforestwatch.org/" target="_blank" class="box gfw-climate"></a>
            <a href="http://fires.globalforestwatch.org/home/" target="_blank" class="box gfw-fires"></a>
            <a href="http://commodities.globalforestwatch.org/" target="_blank" class="box gfw-commodities"></a>
            <a href="http://water.globalforestwatch.org/" target="_blank" class="box gfw-water"></a>
            <a href="http://forestwatcher.globalforestwatch.org/" target="_blank" class="box gfw-watcher"></a>
            <div class="box-last">
              <a href="http://developers.globalforestwatch.org/" target="_blank" class="box -last">
                <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-h-explore"></use></svg>
                <span>explore all apps</span>
              </a>
            </div>
          </div>
        </div>
        <div class="m-header-more-container -center">
          <div class="-center">
            <h3>More in GFW</h3>
            <ul class=" more-options-secondary-container"></ul>
            <div class=" more-options-container">
              <a class="more-options-item" href="http://developers.globalforestwatch.org/">
                <svg class="svg"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-developer"></use></svg>
                <span>developer tools</span>
              </a>
              <a class="more-options-item" href="<% if (location.hostname === 'staging.globalforestwatch.org') {%>http://staging.globalforestwatch.org/howto<% } else { %>http://www.globalforestwatch.org/howto<% } %>">
                <svg class="svg"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-how-to"></use></svg>
                <span>how to portal</span>
              </a>
              <a class="more-options-item" href="<% if (location.hostname === 'staging.globalforestwatch.org') {%>http://staging.globalforestwatch.org/small-grants-fund<% } else { %>http://www.globalforestwatch.org/small-grants-fund<% } %>">
                <svg class="svg"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-samll-people"></use></svg>
                <span>small grants fund</span>
              </a>
              <a class="more-options-item" href="http://data.globalforestwatch.org/" target="_blank">
                <svg class="svg"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-open-data"></use></svg>
                <span>open data portal</span>
              </a>
              <a class="more-options-item" href="<% if (location.hostname === 'staging.globalforestwatch.org') {%>http://staging.globalforestwatch.org/contribute-data<% } else { %>http://www.globalforestwatch.org/contribute-data<% } %>">
                <svg class="svg"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-contribute_icon"></use></svg>
                <span>contribute data</span>
              </a>
              <a class="more-options-item" href="http://blog.globalforestwatch.org/">
                <svg class="svg"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-blog"></use></svg>
                <span>blog</span>
              </a>
              <a class="more-options-item" id="stories-link" href="http://www.globalforestwatch.org/stories">
                <svg class="svg"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-stories"></use></svg>
                <span>stories</span>
              </a>
              <a class="more-options-item" href="https://groups.google.com/forum/#!forum/globalforestwatch" target="_blank">
                <svg class="svg"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-forum"></use></svg>
                <span>discussion forum</span>
              </a>
            </div>
          </div>
        </div>
        <div class="m-sitemap-info-container">
          <div class="-center">
            <div class="sitemap-container">
              <a href="http://www.globalforestwatch.org/sitemap"><h3>SITEMAP</h3></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
</div>
