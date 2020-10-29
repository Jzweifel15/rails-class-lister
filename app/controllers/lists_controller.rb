class ListsController < ApplicationController
  before_action :set_list, only: [:edit, :update, :destroy]

  def index
  end

  def new 
    @list = List.new
    @student = session[:user_id]
  end

  def create
    @list = List.new(list_params) 

    if @list.validate_course_ids
      flash[:notice] = "Something went wrong. Make sure you have selected at least 1 class before submitting."
      redirect_to new_student_list_path(session[:user_id])
    else
      @list.save
      redirect_to student_path(@list.student_id)
    end
  end

  def edit
    @student = session[:user_id]
    #@courses = Course.search(params[:search])
  end

  def update
    @list.update(list_params)

    if @list.validate_course_ids
      flash[:notice] = "Something went wrong. Make sure you have selected at least 1 class before submitting."
      redirect_to edit_student_list_path(session[:user_id])
    else
      @list.save
      redirect_to student_path(@list.student_id)
    end
  end

  def destroy
    @list.delete
    redirect_to student_path(session[:user_id])
  end

  private

  def set_list
    @list = List.find_by(student_id: session[:user_id])
  end

  def list_params
    params.require(:list).permit(:student_id, course_id: [])
  end

end