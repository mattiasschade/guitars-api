class GuitarsController < ApplicationController

  def index
    @guitars = Guitar.all
    render :index
  end

  def show
    @guitar = Guitar.find_by(id: params["id"])
    render :show
  end

  def create
    @guitar = Guitar.new
    @guitar.brand = params[:brand]
    @guitar.name = params[:name]
    @guitar.color = params[:color]      
    @guitar.fretboard = params[:fretboard]
    
    @guitar.save
    render :show
  end
  
end
