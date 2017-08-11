Deface::Override.new(virtual_path:      'spree/checkout/_new_user',
                     name:              'add_terms_of_service_to_checkout',
                     replace_contents:  '[data-hook="signup_inside_form"]',
                     text:              '<%= render :partial => "spree/shared/user_form", :locals => { :f => f } %>
                                         <div class="form-group">
                                          <%= f.check_box :terms_of_service %>
                                          <%= label_tag(:terms_of_service, "Wyrażam zgodę na przetwarzanie moich danych osobowych przez FriendsFurever w celu założenia konta Klienta, obsługi i realizacji zamówień.", class: "soft-label") %>
                                         </div>
                                         <p><%= f.submit Spree.t(:create), :class => "btn btn-lg btn-success btn-block" %></p>')
