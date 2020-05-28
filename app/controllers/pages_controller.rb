class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :terms, :bank, :good]

  def home
    @trips = Trip.all
    @trip_count = Trip.count
  end

  def good

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
