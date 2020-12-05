class Api::SubscriptionsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    payment_status = perform_payment
  end

  private

  def perform_payment
    customer = Stripe::Customer.create(
      email: current_user.email,
      source: params[:stripeToken],
      description: "For subscription to awesome website"
    )
    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: 500,
      currency: 'sek'
    )

    charge
  end
end
