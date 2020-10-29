class CoursesController < ApplicationController
  
  def index
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.valid?
      @course.save
      redirect_to course_path(@course)
    else
      flash[:notice] = "Something went wrong. Make sure the name field is filled out."
      render :new
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :description)
  end

end