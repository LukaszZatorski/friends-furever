Deface::Override.new(virtual_path: 'spree/shared/_order_details',
    name:             'add_inpost_info_to_order_details',
    replace_contents: '[data-hook="order-ship-address"]',
    text:             '<h4><%= Spree.t(:shipping_address) %> <%= link_to "(#{Spree.t(:edit)})", checkout_state_path(:address) unless order.completed? %></h4>
                      <% if order.shipments.first.selected_shipping_rate.name == "Paczkomaty InPost" %>
                        <%= render "spree/shared/inpost_address", address: order.inpost_machine %>
                      <% else %>
                        <%= render "spree/shared/address", address: order.ship_address %>
                      <% end %>')
