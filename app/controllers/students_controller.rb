class StudentsController < ApplicationController

  def index
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)

    if @student.save
      session[:user_id] = @student.id 
      redirect_to student_path(@student)  
    end

  end

  private

  def student_params
    params.require(:student).permit(:name, :major, :email, :password, :password_confirmation)
  end

end