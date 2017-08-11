Deface::Override.new(virtual_path:  'spree/admin/shared/_address_form',
                     name:          'change_company_to_pet_name',
                     replace:       'erb[loud]:contains("t(:company)")',
                     text:          '<%= f.label :company, Spree.t(:pet_name) %>')
