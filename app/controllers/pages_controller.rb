class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :terms, :bank, :good, :wekare]

  def home
    @trips = Trip.all
    @trip_count = Trip.count
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
end
