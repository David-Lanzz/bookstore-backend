class CategoriesController < ApplicationController
  def index
    @level = Level.find(params[:level_id])
    @categories = @level.categories
    render json: @categories
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      @level = Level.find(params[:level_id])
      @level.categories << @category
      render json: {message: "Category created successfully", category: @category}
    else
      render json: {error: @category.errors.full_messages}
    end
  end

  def category_params
    params.require(:category).permit(:name,:level_id,:logo,:alias)
  end
end
