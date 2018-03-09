class RentsListsController < ApplicationController
  def show
    @rent = Rent.all
  end
end
