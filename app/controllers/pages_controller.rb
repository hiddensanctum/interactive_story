class PagesController < ApplicationController
  before_filter :load_book

  def index
    @pages = @book.pages.paginate(:page => params[:page], :per_page => 1)
  end

  def show
    @page = @book.pages.find(params[:id])
  end

  def new
    @page = @book.pages.new
    1.times do
      question = @page.questions.build
      3.times { question.answers.build }
    end
  end

  def edit
    @page = @book.pages.find(params[:id])
  end

  def create
    @page = @book.pages.new(page_params)
    binding.pry

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
      params.require(:page).permit(:image, :story, questions_attributes: [:id, :page_id, :name, '_destroy', answers_attributes: [:id, :question_id, :name, :correct, '_destroy' ] ])
    end

    def load_book
      @book = Book.find(params[:book_id])
    end
end
