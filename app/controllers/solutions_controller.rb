class SolutionsController < ApplicationController
  def index
    @solutions = Solutions.all
  end

  def show
    @solution = Solutions.find(params[:id])
  end

  def new
    @solution = Solutions.new
  end

  def edit
  end

  def update
  end

  def create
    @solution = Solutions.new(solution_params)

    respond_to do |format|
      if @solution.save
        format.html { redirect_to @solution, notice: 'Question was successfully created.' }
        format.json { render action: 'show', status: :created, location: @solution }
      else
        format.html { render action: 'new' }
        format.json { render json: @solutions.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def solution_params
    params.require(:solution)
  end
end
