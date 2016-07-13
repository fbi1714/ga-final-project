class DrawerController < ApplicationController
  before_action :authorise

  def index
  end

  def table

  end

  def create
    params[:content].each do |cell|
      row = cell[1]["row"]
      column = cell[1]["column"]
      text = cell[1]["text"]

      # Make a new record of all of those things in the Parts table
    end
  end

  private

    def authorise
      # Unless someone is logged in, take every request back to the login page
      flash[:error] = "You need to be logged in for that" unless @current_user.present?
      redirect_to login_path unless @current_user.present?
    end

end
