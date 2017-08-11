Deface::Override.new(virtual_path:           'spree/products/_cart_form',
                     name:                   'change_variant_description',
                     replace_contents:       'span.variant-description',
                     text:                   '<%= variant.option_values[0].presentation %>')
