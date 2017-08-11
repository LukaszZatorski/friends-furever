Deface::Override.new(virtual_path:  'spree/layouts/spree_application',
    name:          'add_cookies_eu',
    insert_bottom: '[data-hook="body"]',
    text:          "<%= render 'cookies_eu/consent_banner' %>",
    original:      '7af6bc2387284d9deba0fbebfc842a619fb1ce88')
