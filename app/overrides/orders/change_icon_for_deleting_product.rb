Deface::Override.new(virtual_path:  'spree/orders/_line_item',
                     name:          'change_icon_for_deleting_product',
                     replace:       'erb[loud]:contains("glyphicon-minus-sign")',
                     text:          '<%= link_to content_tag(:span, "", class: "fa fa-times"), "#", class: "delete", id: "delete_#{dom_id(line_item)}" %>',
                     original:      '0be416c12b7eea65f2396b25151479d7d00796cc')
