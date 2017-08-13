class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :contact]

  def home         # GET /home
  end

  def about        # GET /about
  end

  def contact      # GET /contact
  end

  def cars      # GET /cars
    @cars = Car.all
  end

end
