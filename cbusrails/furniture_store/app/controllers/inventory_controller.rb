class InventoryController < ApplicationController
  def all_products
    @products = Product.all
  end

  def by_category
    @category = params[:category]
    
    @products = Product.where(category: @category)
  end
end
