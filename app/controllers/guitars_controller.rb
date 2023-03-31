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
    @guitar = Guitar.new(
      brand: "Fender",
      name: "Stratocaster",
      color: "Tobacco Sunburst",
      fretboard: "rosewood"
    )
    
    @guitar.save
    render :show
  end
  
end
