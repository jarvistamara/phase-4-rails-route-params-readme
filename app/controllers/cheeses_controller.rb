class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # find a cheese using the id from the URL
    cheese = Cheese.find_by(id: params[:id])
    # send a JSON response using that cheese object
    render json: cheese
  end

end
