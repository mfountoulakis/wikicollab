class SubscriptionsController < ApplicationController

before_filter :authenticate_user!

  def index
  @subscription = Subscription.all 
  end

  def new
    @subscription = Subscription.new(plan_id: params[:plan_id])
    
  end

  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.user = current_user
    if @subscription.save_with_payment  
      flash[:notice] = "Thank You For Subscribing"
      redirect_to wikis_path 
    else
      render :new
    end
  end


  def show
    @subscription = Subscription.find(params[:id])
  end


def subscription_params
  params.require(:subscription).permit(:subscription, :email, :stripe_customer_token, :stripe_card_token, :plan_id, :subscribed)
  end
end