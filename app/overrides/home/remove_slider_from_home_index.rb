Deface::Override.new(virtual_path:  'spree/home/index',
                     name:          'remove_slider_from_home_index',
                     remove:        'erb[loud]:contains("slides")',
                     original:       '6334c46499a4d70ff89b04d40fd097273b6408dd')
