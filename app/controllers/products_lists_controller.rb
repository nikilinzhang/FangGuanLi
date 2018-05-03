class ProductsListsController < ApplicationController
  def show
    @products = Product.all
  end
end
