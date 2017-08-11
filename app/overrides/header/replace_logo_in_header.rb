Deface::Override.new(virtual_path: 'spree/shared/_header',
										 name:				 'replace_logo_in_header',
										 replace: 		 'figure#logo',
                     text:         '<nav class="navbar col-md-4 col-sm-4 col-xs-2" data-hook>
										 									<% if %w[home products taxons].exclude?(controller_name) %>
																				<ul class="nav navbar-nav">
																					<li id="home-link" data-hook>
																						<%= link_to(spree.root_path) do %>
																							<span class="hidden-xs"><%= Spree.t(:home) %></span>
																							<i class="fa fa-home fa-lg visible-xs-inline-block" aria-hidden="true"></i>
																						<% end %>
																					</li>
																				</ul>
																			<% end %>
																		</nav>',
										 original:			'5d476e5adccdea5626eeabd25ec142a6bd833b41')
