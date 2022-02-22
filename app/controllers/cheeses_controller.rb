class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # find cheese using the ID from the URl
    cheese = Cheese.find_by(id:params[:id])
    #  sen a JSON respnse using that cheese object
    render json:cheese
  end

end
