class GoogleCalendar
  attr_reader :base_url, :email
  def initialize
    @base_url = "https://www.googleapis.com/calendar/v3"
  end

  def create_appointment(email, starttime, endtime, token)
      @event = {
      'summary' => 'Hair Appointment',
      'description' => 'Hair appointment with Alisha',
      'location' => '395 Linden Blvd',
      'start' => { 'dateTime' => start) },
      'end' => { 'dateTime' => endtime },
      'attendees' => [ { "email" => email },
      { "email" =>'sally@example.com' } ] }
      # change the second email to alisha email
      # figure out how to authenticate on every request

    client = Google::APIClient.new
    client.authorization.access_token = token
    service = client.discovered_api('calendar', 'v3')

    @set_event = client.execute(:api_method => service.events.insert,
                            :parameters => {'calendarId' => email, 'sendNotifications' => true},
                            :body => JSON.dump(@event),
                            :headers => {'Content-Type' => 'application/json'})
  end

  def edit_appointment(email, token)
  end


  def cancel_appointment(email, token)

  end
end
