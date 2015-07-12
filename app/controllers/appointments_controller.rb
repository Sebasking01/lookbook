class AppointmentsController < ApplicationController
  def create
    binding.pry
  end

  def edit
  end

  def show
  end

  def new
    @user = current_user
    @appointment = @user.appointments.build
  end

  def destroy
  end
end
