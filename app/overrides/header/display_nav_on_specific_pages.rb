Deface::Override.new(virtual_path: 'spree/shared/_header',
										 name:				 'display_nav_on_specific_pages',
                     replace:      '#spree-header>div.container',
                     text:         '<% if %w[home products taxons].include?(controller_name) %>
											 								<div id="taxonomies">
																				<div class="container">
	                                        <%= render partial: "spree/shared/main_nav_bar" if store_menu? %>
	                                      </div>
																			</div>
                                    <% end %>',
										 original:     '26c788e8704b402639f97a70bb013e31f7b841ad')
