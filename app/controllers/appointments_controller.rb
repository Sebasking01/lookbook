class AppointmentsController < ApplicationController
  def create
    binding.pry
  end

  def edit
  end

  def show
  end

  def new
    @user = User.find(session[:user_id])
    @appointment = @user.appointments.build
  end

  def destroy
  end
end
