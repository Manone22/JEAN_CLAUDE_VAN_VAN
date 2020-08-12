class PagesController < ApplicationController
  skip_before_action :authenticate_user! #only: [:home, :contact]

  def home
  end

  def contact
  end

  def dashboard
    @user = current_user
    @vans = current_user.vans
    @bookings = current_user.bookings
  end
end
