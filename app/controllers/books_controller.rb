class BooksController < ApplicationController

  def index
    @level = Level.find(params[:level_id])
    @books = @level.books
    render json: {level: @level, books: @books}
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      @level = Level.find(params[:level_id])
      @author = Author.find(params[:author_id])
      @school = School.find(params[:school_id])
      @department = Department.find(params[:department_id])
      @level.books << @book
      @author.books << @book
      @school.books << @book
      @department.books << @book
      render json: {message: "Book created successfully"}
    else
      render json: {error: @book.errors.full_messages}
    end
  end

  def show
    @book = Book.find(params[:id])
    render json: {}
  end


  private

  def book_params
    params.require(:book).permit(:title,:category,:pages,:progress,:link,:author_id,:school_id,:department_id,:level_id)
  end
end
