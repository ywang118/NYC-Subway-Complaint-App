class WelcomeController < ApplicationController
  skip_before_action :authorized, only: [:home, :about]
  def home
    redirect_to stations_path if logged_in?
  end

  def about

  end
end
