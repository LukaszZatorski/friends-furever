Deface::Override.new(virtual_path:  'spree/admin/orders/_shipment',
                     name:          'add_additional_info_to_shipment',
                     insert_after:  '[data-hook="admin_shipment_form"]',
                     text:          '
                     <div>
                       <h3><%= Spree.t(:additional_info) %></h4>
                       <p><%= order.additional_info %></p>
                     </div>')
