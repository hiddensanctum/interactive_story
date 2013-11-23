class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    binding.pry
    if @book.save
      redirect_to @book
    end
  end

  def update
  end

  def destroy
  end

  private
    def book_params
      params.require(:book).permit(:name, :author, :level, :num_page, :description)
    end
end
