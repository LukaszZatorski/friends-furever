Deface::Override.new(virtual_path: 'spree/home/index',
                     name:         'add_header_to_home_page_products',
                     insert_top:   '[data-hook="homepage_products"]',
                     text:         '<h1 class="home-page-title">Nasze produkty</h1>',
                     original:     '47f77627c2940e999366192a3b364e45933a7edb')
