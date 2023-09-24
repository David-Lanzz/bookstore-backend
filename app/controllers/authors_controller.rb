class AuthorsController < ApplicationController

  def index
    @school = School.find(params[:school_id])
    @authors = @school.authors
  end

  def show
    @author = Author.find(params[:id])
    render json: @author
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      @school = School.find(params[:school_id])
      @school.authors << @author
      render json: {message: "Author created successfully"}
    else
      render json: {error: @author.errors.full_messages}
    end
  end

  def author_params
    params.require(:author).permit(:name,:email,:whatsapp,:twitter,:level,:department,:school_id)
  end
end
