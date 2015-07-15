class Appointment < ActiveRecord::Base
  belongs_to :user

  def add_appointment
    GoogleCalendar.create_appointment(email, startime, endtime, token)

  end

  def remove_appointment(email, token)
    GoogleCalendar.cancel_appointment(email, token)
  end

  def edit_user_appointment(email, token)
    GoogleCalendar.edit_appointment(email, token)
  end
end
