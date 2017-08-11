Deface::Override.new(virtual_path:  'spree/address/_form',
                     name:          'change_company_to_pet_name',
                     replace:       'erb[loud]:contains("t(:company)")',
                     text:          '<%= form.label :company, Spree.t(:pet_name) %>')
