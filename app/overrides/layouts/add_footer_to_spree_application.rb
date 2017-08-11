Deface::Override.new(virtual_path:  'spree/layouts/spree_application',
    name:          'add_footer_to_spree_application',
    insert_bottom: '[data-hook="body"]',
    partial:       'spree/shared/footer',
    original:      '0e8d0e5fd9cdeeb6fa4767665667cdd868cabb3c')
