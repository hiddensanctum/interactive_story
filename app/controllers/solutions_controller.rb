class SolutionsController < ApplicationController
  def index
    @solutions = Solution.all
  end

  def show
    @solution = Solution.find(params[:id])
  end

  def new
    @solution = Solution.new
  end

  def edit
  end

  def update
  end

  def create
    @solution = Solution.new(solution_params)

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
