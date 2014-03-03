class SubscriptionsController < ApplicationController
  
  def index
    @subscription = Subscription.all 
  end

  def new
    @subscription = Subscription.new(plan_id: params[:plan_id])
    
  end

  def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save_with_payment
      redirect_to @subscription, :notice => "Thank you for subscribing!"
    else
      render :new
    end
  end

  def show
    @subscription = Subscription.find(params[:id])
  end


def subscription_params
  params.require(:subscription).permit(:subscription, :email, :stripe_customer_token, :stripe_card_token, :plan_id)
  end
end