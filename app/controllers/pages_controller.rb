class PagesController < ApplicationController
  before_filter :load_book

  def index
    @pages = @book.pages.paginate(:page => params[:page])
  end

  def show
    @page = @book.pages.find(params[:id])
  end

  def new
    @page = @book.pages.new
  end

  def edit
    @page = @book.pages.find(params[:id])
  end

  def create
    @page = @book.pages.new(page_params)

    if @page.save
      redirect_to [@book, @page]
    end
  end

  def update
  end

  def destroy
  end

  private
    def page_params
      params.require(:page).permit(:image, :story)
    end

    def load_book
      @book = Book.find(params[:book_id])
    end
end
