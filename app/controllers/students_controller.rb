class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)

    if @student.valid?
      @student.save
      session[:user_id] = @student.id 
      redirect_to student_path(@student)
    else
      flash[:notice] = "Make sure you have all fields filled out. If you have not decided a major, put undecided."
      redirect_to new_student_path
    end

  end

  private

  def student_params
    params.require(:student).permit(:name, :major, :email, :password, :password_confirmation)
  end

end