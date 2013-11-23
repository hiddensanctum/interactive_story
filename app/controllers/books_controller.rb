class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
    1.times do
      page = @book.pages.build
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
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
      params.require(:book).permit(:name, :author, :level, :num_page, :description, questions_attributes: [:id, :image, :story, :book_id, '_destroy'])
    end
end
