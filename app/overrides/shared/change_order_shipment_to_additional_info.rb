Deface::Override.new(virtual_path:  'spree/shared/_order_details',
                     name:          'change_order_shipment_to_additional_info',
                     replace:       '[data-hook="order-shipment"]',
                     text:          '
                     <div class="col-md-3 col-sm-3 col-xs-6">
                      <h4><%= Spree.t(:additional_info) %></h4>
                      <p><%= order.additional_info %></p>
                     </div>')
