class RentsController < ApplicationController
  def show
  	@rent = Rent.find(params[:id])
  end

  def new
  	@rent = Rent.new
  end

  def create
  	@rent = Rent.new(rent_params)
  	if @rent.save
      # redirect_to ''
      flash[:success] = "Successful signup!"
      redirect_to rents_path(id: @rent.id)
      # Handle a successful save.
    else
      render 'new'
    end
  end

private

    def rent_params
      params.require(:rent).permit(:title, :content, :price, :contact_name, :mobile, :email, :wechat)
    end
end
