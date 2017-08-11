require "net/http"
require "uri"

Spree::CheckoutController.class_eval do

  before_action :get_zip_code
  before_action :permit_inpost_machine
  before_action :redirect_for_tpay, :only => :update

  def tpay
    return unless params[:state] == "payment"
    @data = { :opis => "Friends Furever - Zamówienie: #{@order.number}",
              :kwota => @order.total,
              :crc => @order.number,
              :pow_url => "https://www.friendsfurever.pl/orders/#{@order.number}",
              :pow_url_blad => "https://www.friendsfurever.pl/",
            }
  end

  def permit_inpost_machine
    Spree::PermittedAttributes.checkout_attributes << :inpost_machine
  end


  private

  def redirect_for_tpay
      return unless params[:state] == "payment"
      @payment_method = Spree::PaymentMethod.find(params[:order][:payments_attributes].first[:payment_method_id])
      if @payment_method && @payment_method.kind_of?(Spree::PaymentMethod::Tpay)
        @order.payments.with_state('checkout').where(payment_method_id: @payment_method.id).first_or_create(amount: @order.total)
        redirect_to @payment_method.redirect_url(tpay)
      end
    end

  def get_zip_code
    if params[:state].present? && params[:state] == "delivery"
      @zipcode = @order.bill_address.zipcode
    end
  end
end
