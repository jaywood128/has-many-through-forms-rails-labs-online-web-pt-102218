class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
  end


  def params_category
    
  end 
end
