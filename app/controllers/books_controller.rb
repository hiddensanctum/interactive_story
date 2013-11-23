class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @books = Book.new

  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
