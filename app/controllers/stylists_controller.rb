class StylistsController < ApplicationController
    def show
      @stylist = Stylist.find(params[:id])
    end
  
    def index
      @stylists = Stylist.all
    end
  end
  