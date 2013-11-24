class PagesController < ApplicationController
  before_filter :load_book

  def index
    @pages = @book.pages.paginate(:page => params[:page], :per_page => 1)
    respond_to do |format|
      format.html
      format.js
    end
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
      redirect_to book_pages_path
    end
  end

  def update
  end

  def destroy
  end

  def eval
  end

  private
    def page_params
      params.require(:page).permit(:image, :story, questions_attributes: [:id, :page_id, :name, '_destroy', answers_attributes: [:id, :question_id, :image, :name, :correct, '_destroy' ] ])
    end

    def load_book
      @book = Book.find(params[:book_id])
    end
end
