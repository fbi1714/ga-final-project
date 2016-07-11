
class OrderController < ApplicationController
  before_action :authorise

  def index
    @posts = Order.paginate(:page => params[:page], :per_page => 2)
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new order_params
    if @order.save
      redirect_to order_index_path
    else
      render :new
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])

    if @order.update_attributes(order_params)
      flash[:notice] = "Order updated successfully."
      redirect_to order_index_path
    else
      @order_count = Order.count
      render('edit')
    end
  end

  def delete
    @order = Order.find(params[:id])
  end

  def destroy
    order = Order.find(params[:id]).destroy
    flash[:notice] = "Order destroyed successfully."
    redirect_to order_index_path
  end

  private
    def order_params
      params.require(:order).permit(:description, :order_number)
    end

    def authorise
      # Unless someone is logged in, take every request back to the login page
      flash[:error] = "You need to be logged in for that" unless @current_user.present?
      redirect_to login_path unless @current_user.present?
    end

end
