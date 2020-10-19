class SessionsController < ApplicationController

  def sign_in 
  end

  def create

    @student = Student.find_or_create_by(email: auth['info']['email']

    return head(:forbidden) unless @student && @student.authenticate(params[:password])
    session[:user_id] = @student.id 
    redirect_to student_path(@student)
  end

  private

  def auth 
    request.env['omniauth.auth']
  end

end