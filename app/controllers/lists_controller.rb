class ListsController < ApplicationController

  def index
  end

  def new 
    @list = List.new
    @student = session[:user_id]
  end

  def create
    @list = List.create(list_params) 
    #byebug

    if @list.valid?
      @list.save
      redirect_to student_path(@list.student_id)
    else
      flash[:notice] = "Something went wrong. Make sure you have selected at least 1 class before submitting."
      redirect_to new_student_list_path(session[:user_id])
    end
  end

  private

  def list_params
    params.require(:list).permit(:student_id, course_id: [])
  end

end