class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :terms, :bank, :good, :wekare, :about_us, :videos, :contact_us]

  def home
    @trips = Trip.all
    @trip_count = Trip.count
    @video = Video.last
  end

  def good

  end

  def wekare
    @donations = Donation.all
    @money = 0.0
    @donations.each do |donation|
      @money = @money + donation.donation
    end
  end

  def terms

  end

  def bank

  end

  def wallace
    @trips = Trip.all
    @questions = Question.all
  end

  def all_trips
    @trips = Trip.all
  end

  def about_us
    @trips = Trip.all
  end

  def contact_us

  end

  def listas
    @trips = Trip.all
  end

  def preguntas
    @questions = Question.all
  end

end
