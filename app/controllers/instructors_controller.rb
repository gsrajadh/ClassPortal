class InstructorsController < ApplicationController
  def index
    if current_user[:type].to_s == "instructor"
	@users = User.where("id = ?",current_user[:id])
    else
    	@users = User.where("type = ?","instructor")
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    @user[:type] = 'instructor'
    if @user.save
    	redirect_to @user
    else
        render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params_update)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @courses = Course.where("user_id = ?",params[:id])
    @courses.each do |course|
    	@enrollments = Enrollment.where("course_id = ?",course.id)
    	@enrollments.destroy_all
    	@materials = Material.where("course_id = ?",course.id)
    	@materials.destroy_all
    end
    @courses.destroy_all
    @user = User.find(params[:id])
    
    @user.destroy
 
    redirect_to instructors_path
  end

  private

  def user_params
    params.require(:user).permit(:email,:name,:password,:passwordconfirmation)
  end

  def user_params_update
    params.require(:user).permit(:name,:password,:passwordconfirmation)
  end
end
