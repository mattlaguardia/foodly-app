class ChargesController < ApplicationController

protect_from_forgery with: :null_session
skip_before_action :verify_authenticity_token, only: [:new, :create]

	def handle_unverified_request
		forgery_protection_strategy.new(self).handle_unverified_request
	end


	def new
		if current_user
			render :new
			
		else
			redirect_to login_path
		end
	end

	def create
		@amount = 9900
		customer = Stripe::Customer.create(
			:email => params[:stripeEmail],
			:source  => params[:stripeToken]
			)
		charge = Stripe::Charge.create(
			:customer    => customer.id,
    		:amount      => @amount,
    		:description => 'Rails Stripe customer',
    		:currency    => 'usd'
			)
		current_user.user_stripe = customer.id
		current_user.save
		p current_user
		p customer
		
		rescue Stripe::CardError => e
  			flash[:error] = e.message
  			redirect_to new_charge_path
		end	
		
	end
