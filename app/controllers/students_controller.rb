class StudentsController < ApplicationController
  def index_course
    @courses = Course.all
  end

  def show_course
    @course = Course.find(params[:id])
  end
end
