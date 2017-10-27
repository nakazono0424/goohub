class GoohubCLI < Clian::Cli
  desc "share CALENDAR_ID EVENT_ID", "Share event by EVENT_ID"

  def share(calendar_id, event_id)
    event = client.get_event(calendar_id, event_id)
    puts "summary:    #{event.summary}\n"
    puts "id:         #{event.id}\n"
    puts "created:    #{event.created}\n"
    puts "kind:       #{event.kind}\n"
    puts "organized:  #{event.organizer.display_name}\n"
    puts "start_time: #{event.start.date_time}\n"
    puts "end_time:   #{event.end.date_time}\n"
    puts "location:   #{event.location}\n"
  end
end
