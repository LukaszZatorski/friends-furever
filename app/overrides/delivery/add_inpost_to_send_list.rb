Deface::Override.new(:virtual_path => "spree/checkout/_delivery",
    :name => "add_inpost_to_send_list",
    :set_attributes => ".shipping-method label",
    :attributes => {"data-name" => "<%= rate.shipping_method.admin_name %>"},
    :disabled => false,
    :original => '35647471c96c6bf3eafe0f114b03d5c1198e71f7')
