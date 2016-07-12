class DrawerController < ApplicationController
  before_action :authorise

  def index
  end

  def table

  end


  private

    def authorise
      # Unless someone is logged in, take every request back to the login page
      flash[:error] = "You need to be logged in for that" unless @current_user.present?
      redirect_to login_path unless @current_user.present?
    end

end
