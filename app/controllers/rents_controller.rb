class RentsController < ApplicationController
  def show
  	@rent = Rent.find(params[:id])
  end
end
