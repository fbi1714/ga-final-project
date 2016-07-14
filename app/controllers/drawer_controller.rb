class DrawerController < ApplicationController
  before_action :authorise

  def index
  end

  def create
    @drawer = Drawer.find params[:draw_id]
    @item = Item.find params[:item_id]

    params[:content].each do |cell|
      row = cell[1]["row"]
      column = cell[1]["column"]
      text = cell[1]["text"]

      p = Part.create :column_number => column, :row_number => row, :cell_content => text
      @drawer.parts << p
    end

    render :json => { :status => 200 }o
  end

  private

    def authorise
      # Unless someone is logged in, take every request back to the login page
      flash[:error] = "You need to be logged in for that" unless @current_user.present?
      redirect_to login_path unless @current_user.present?
    end

end
