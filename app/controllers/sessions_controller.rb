class SessionsController < ApplicationController

  def sign_in 
  end

  def create
    @student = Student.find_by(school_email: params[:student][:school_email])
    return head(:forbidden) unless @student && @student.authenticate(params[:student][:password])
    session[:user_id] = @student.id 
    redirect_to student_path(@student)
  end

  def destroy
    session.clear 
    redirect_to '/'
  end

end