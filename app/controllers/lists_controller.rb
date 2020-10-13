class ListsController < ApplicationController
  #before_action :set_list, only: [:edit, :update]

  def index
  end

  def new
    @list = List.new
    @student = session[:user_id]
  end

  def create 
    @list = List.new(list_params)

    if @list.valid?
      @list.save
      redirect_to student_path(@list.student_id)
    else
      flash[:notice] = "Something went wrong. Make sure you have selected at least 1 class before submitting."
      redirect_to new_student_list_path(session[:user_id])
    end

    def edit
      @list = List.find(params[:id])
    end

    def update
    end

    def destroy
      @list = List.find(params[:id])
      @list.delete
      redirect_to student_path(session[:user_id])
    end

  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:student_id, courses_id: [])
  end

end