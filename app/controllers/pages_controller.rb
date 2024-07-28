class PagesController < ApplicationController
  def home
  end

  def gallery
    @photos = Photo.all
  end

  def reviews
    @reviews = Review.all
  end

  def services
  end

  def contact
  end
end
