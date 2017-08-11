Deface::Override.new(virtual_path: 'spree/shared/_nav_bar',
                     name:         'replace_search_with_cart_in_nav_bar',
                     replace:      'li#search-bar',
                     text:         '<li id="link-to-cart" data-hook>
                                      <noscript>
                                        <%= link_to Spree.t(:cart), "/cart" %>
                                      </noscript>
                                      &nbsp;
                                    </li>
                                    <script>Spree.fetch_cart()</script>',
                     original:      'cffbc4624b8c70d8a36b2ce8b915c4b011d1995a')
