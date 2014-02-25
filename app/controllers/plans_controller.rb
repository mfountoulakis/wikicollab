class PlansController < ApplicationController
  def index
    @plans = Plan.new
  end
end
