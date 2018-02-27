<div class="m-header-backdrop"></div>
<ul>
  <% if (!!transifex) { %>
  <li>
    <h3 id="btnTransifexTranslateMobileElement" class="-selector">
      <span>Language</span>
      <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-h-plus"></use></svg>
    </h3>
    <div id="transifexTranslateMobileElement" class="m-transifex"></div>
  </li>
  <%}%>

  <li>
    <form action="https://www.globalforestwatch.org/search">
      <button type="submit"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#gfw-header-icon-h-search"></use></svg></button>
      <input type="text" name="query" id="search-input-mobile" placeholder="Search GFW website">
    </form>
  </li>

  <% for ( var i = 0; i < menu.length; i++ ) { %>
    <li>
      <h3>
        <% if (!!menu[i].link) { %>
          <a href="<%= menu[i].link %>"><%= menu[i].name %></a>
        <%} else {%>
          <span><%= menu[i].name %></span>
        <%}%>
      </h3>
      <% if(!!menu[i].submenu && !!menu[i].submenu.length) { %>
        <ul>
          <% for ( var j = 0; j < menu[i].submenu.length; j++ ) { %>
            <li>
              <a class  ="link-analytics <%= (!!menu[i].submenu[j].classname ? menu[i].submenu[j].classname : "")%>"
                 target ="<%= (!!menu[i].submenu[j].target ? menu[i].submenu[j].target : "")%>"
                 href="<%= menu[i].submenu[j].link %>">
                  <%= menu[i].submenu[j].name %>
              </a>
            </li>
          <% } %>
        </ul>
      <% } %>
    </li>
  <% } %>
</ul>
