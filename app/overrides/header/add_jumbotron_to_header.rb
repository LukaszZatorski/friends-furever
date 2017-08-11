Deface::Override.new(virtual_path:  'spree/shared/_header',
                     name:          'add_jumbotron_to_header',
                     insert_bottom: '#spree-header',
                     text:          '<% if %w[home].include?(controller_name) %>
                                       <%= render partial: "spree/shared/slider", locals: { slider: Spree::Slide.published, cid: "home", interval: false } %>
                                     <% end %>',
                     original:       'e46052dc90296fad9e48d0dd5492d5385f5b3447')
