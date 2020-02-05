class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def new
    @duck = Duck.new
    @students = Student.all
  end
  
  def create
    @duck = Duck.new(duck_params)
  
    if @duck.save
      flash[:success] = "Object successfully created"
      redirect_to @duck
    else
      flash[:errors] = @duck.errors.full_messages
      redirect_to new_duck_path
    end
  end
  
  private 

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end
end
