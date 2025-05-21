require "pry"
require "time"

class Event

    attr_accessor :start_date
    attr_accessor :duration
    attr_accessor :title
    attr_accessor :attendees

    def initialize(start_date_to_save, duration_to_save, title_to_save = "", attendees_to_save = [])
        @start_date = Time.parse(start_date_to_save)
        @duration = duration_to_save
        @title = title_to_save
        @attendees = attendees_to_save
    end

    def postpone_24h
        postpone_date = @start_date + 86400
    end

    def end_date
        end_meeting = start_date + (duration * 60)
    end

    def is_past?
        if Time.now > start_date
            return "Oui"
        else
            return "Non"
        end
    end

    def is_soon?
        Time.now.between?(start_date, start_date + 1800)
    end

end

binding.pry
puts "end of file"