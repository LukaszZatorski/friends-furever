module Spree
  class TpayController < ApplicationController
    skip_before_action :verify_authenticity_token, :only => [:notification]

    def notification
      if notification_valid?(params, request.remote_ip)
    		#process transaction
        @order = Spree::Order.find_by_number(params[:tr_crc])
        @payment = @order.payments.last

        handle_notification unless @payment.completed? || @payment.failed?

        respond_to do |format|
          format.html { render :text => "TRUE" }
        end
    	else
    		render nothing: "Request from forbidden IP", status: :forbidden
    	end
    end

    private

    def notification_valid?(transaction, ip)
      @payment_method = Spree::PaymentMethod::Tpay.first
      md5sum = Digest::MD5.hexdigest([
                                        @payment_method.preferred_tpay_account_id,
                                        transaction[:tr_id],
                                        transaction[:tr_amount],
                                        transaction[:tr_crc],
                                        @payment_method.preferred_tpay_security_code
                                      ].join)
      ["195.149.229.109", "148.251.96.163", "178.32.201.77", "46.248.167.59", "46.29.19.106"].include?(ip) && transaction[:md5sum] == md5sum
    end

    def handle_notification
      if params[:tr_status] == "TRUE"
        payment_success
      else
        @payment.started_processing
        @payment.failure!
      end
    end

    def payment_success
      @payment.started_processing
      @payment.complete!

      @order.finalize!
      @order.reload

      @order.next
      @order.next
      @order.save
    end

  end
end
