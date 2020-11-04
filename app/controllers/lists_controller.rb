class ListsController < ApplicationController

  def index
  end

  def new 
    @list = List.new
    @student = current_user
  end

  def create
    if list_params
      list_params[:course_id].each do |course_id|
        if course_id != ""
          List.find_or_create_by(student_id: current_user, course_id: course_id)
        end
      end
      redirect_to student_path(current_user)
    else
      flash[:notice] = "Something went wrong. Make sure you have selected at least 1 class before submitting."
      redirect_to new_student_list_path(current_user)
    end
  end

=begin
  def edit
    @lists = List.where(student_id: current_user)
    byebug
  end

  def update
    if list_params
      list_params[:course_id].each do |course_id|
        if course_id != ""
          List.update(student_id: current_user, course_id: course_id)
        end
      end
      redirect_to student_path(current_user)
    else
      flash[:notice] = "Something went wrong. Make sure you have selected at least 1 class before submitting."
      redirect_to new_student_list_path(current_user)
    end
  end
=end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to student_path(current_user)
  end

  private

  def list_params
    params.require(:list).permit(:student_id, course_id: [])
  end

end