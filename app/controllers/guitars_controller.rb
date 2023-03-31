class GuitarsController < ApplicationController

  def index
    @guitars = Guitar.all
    render :index
  end

  def show
    @guitar = Guitar.find_by(id: params["id"])
    render :show
  end
  
end
