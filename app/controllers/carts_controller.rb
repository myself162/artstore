class CartsController < ApplicationController

  before_action :authenticate_user!, :only => [:checkout]
  before_action :login_required
 
  def index
  end
 
  def checkout
    @order = current_user.orders.build
    @info = @order.build_info
  end

  protected



end

