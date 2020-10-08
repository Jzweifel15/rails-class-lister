class StudentsController < ApplicationController
  before_action :set_student, only: [:show]

  def index
  end

  def show 
  end

  def new
    @student = Student.new
  end

  def create
     @student = Student.create(student_params)
     redirect_to student_path(@student)
  end

  private 

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :school_email, :password, :password_confirmation, :major)
  end


end