class StylistsController < ApplicationController
    def show
      @stylist = Stylist.find(params[:id])
      @review = @stylist.reviews.new
    end
  
    def index
      @stylists = Stylist.all
    end

    def new
      @stylist = Stylist.new
    end
  
    def create
      @stylist = Stylist.new(stylist_params)
      if @stylist.save
        redirect_to @stylist, notice: 'Stylist was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def set_stylist
      @stylist = Stylist.find(params[:id])
    end
    
    def stylist_params
      params.require(:stylist).permit(:name, :description)
    end
  end
