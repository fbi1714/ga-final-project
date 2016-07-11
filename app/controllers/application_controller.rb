class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :fetch_user, :setup_time

  private

    def fetch_user
      @current_user = User.find_by(:id => session[:user_id]) if session[:user_id].present?
      session[:user_id] = nil unless @current_user.present?
    end

    def setup_time
      Wolfram.appid = ENV["WOLFRAM_CLIENT_ID"]
      query = "#{params[:text][:name]} time" if params[:text]
      result = Wolfram.fetch(query || 'Sydney Australia time')
      # to see the result 3as a hash of pods and assumptions:
      @hash = Wolfram::HashPresenter.new(result).to_hash
    end

end
