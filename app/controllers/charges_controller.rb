class ChargesController < ApplicationController
	def new
	end

	def create
		@amount = 50
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

		rescue Stripe::CardError => e
  			flash[:error] = e.message
  			redirect_to new_charge_path
		end
		user = User.find(params[:user_id])
		customer = Stripe::Customer.find(params[:id])
		# push customer id into user
		# if customer id is not nil, show specific views
	end

