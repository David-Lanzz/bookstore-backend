class AuthorsController < ApplicationController
  def index
    @authors = Author.all
    render json: @authors
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      render json: {message: "Author created successfully"}
    else
      render json: {error: "something went wrong"}
    end

  end

  def update
  end

  def delete
  end

  private

  def author_params
    params.require(:author).permit(:name,:whatsapp,:twitter,:department,:level,:image)
  end
end
