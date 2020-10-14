class SessionsController < ApplicationController

  def sign_in 
  end

  def create
    @student = Student.find_by(email: params[:email])
    return head(:forbidden) unless @student && @student.authenticate(params[:password])
    session[:user_id] = @student.id 
    redirect_to student_path(@student)
  end

end