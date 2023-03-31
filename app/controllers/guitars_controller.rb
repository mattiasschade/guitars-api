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

  def update
    @guitar = Guitar.find_by(id: params["id"])
    @guitar.brand = params[:brand] || @guitar.brand
    @guitar.name = params[:name] || @guitar.name
    @guitar.color = params[:color] || @guitar.color      
    @guitar.fretboard = params[:fretboard] || @guitar.fretboard

    @guitar.save
    render :show
  end

  def destroy
    @guitar = Guitar.find_by(id: params["id"])
    @guitar.destroy

    render json: {message: "This guitar has been successfully deleted from the database"}
  end
end
