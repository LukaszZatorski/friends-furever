Deface::Override.new(virtual_path:     'spree/shared/_main_nav_bar',
                     name:             'add_logo_and_taxonomies_to_main_navbar',
                     replace:          'nav.col-md-12',
                     text:
                     '
                     <nav class="navbar">
                       <div class="container-fluid">
                         <!-- Brand and toggle get grouped for better mobile display -->
                         <div class="navbar-header col-sm-2">
                           <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
                             <span class="sr-only">Toggle navigation</span>
                             <span class="icon-bar"></span>
                             <span class="icon-bar"></span>
                             <span class="icon-bar"></span>
                           </button>
                           <figure id="logo">
                             <%= logo %>
                           </figure>
                         </div>

                         <!-- Collect the nav links, forms, and other content for toggling -->
                         <div class="collapse navbar-collapse col-sm-10" id="navbar-collapse-1">
                         <% max_level = Spree::Config[:max_level_in_taxons_menu] || 1 %>

                           <% @taxonomies.each do |taxonomy| %>
                             <% cache [I18n.locale, taxonomy, max_level, @taxon] do %>
                               <% if taxonomy.root.children.any? %>
                                 <%= taxons_tree(taxonomy.root, @taxon, max_level) %>
                               <% end %>
                             <% end %>
                           <% end %>
                         </div><!-- /.navbar-collapse -->
                       </div><!-- /.container-fluid -->
                     </nav>
                     ',
                     original:      '12ab6ef1c0ea37e8da24bcdedf5e33eb0ee10bc0')
