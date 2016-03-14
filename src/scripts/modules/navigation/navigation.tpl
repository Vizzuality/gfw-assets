<script type="text/html" id="mobileMenuTPL">
  <div class="m-header-backdrop"></div>
  <ul>
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
                <a class  ="<%= (!!menu[i].submenu[j].classname ? menu[i].submenu[j].classname : "")%>"
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
</script>