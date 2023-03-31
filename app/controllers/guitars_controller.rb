class GuitarsController < ApplicationController

  def index
    @guitars = Guitar.all
    render :index
  end
  
end
