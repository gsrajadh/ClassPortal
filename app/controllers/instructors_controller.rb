class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def create
    @instructor = Instructor.new(instructor_params)
    
    if @instructor.save
    	redirect_to @instructor
    else
        render 'new'
    end
  end

  def update
    @instructor = Instructor.find(params[:id])
    if @instructor.update(instructor_params_update)
      redirect_to @instructor
    else
      render 'edit'
    end
  end

  def destroy
    @instructor = Instructor.find(params[:id])
    
    @instructor.destroy
 
    redirect_to instructors_path
  end

  private

  def instructor_params
    params.require(:instructor).permit(:email,:name,:password)
  end

  def instructor_params_update
    params.require(:instructor).permit(:name,:password)
  end
end
