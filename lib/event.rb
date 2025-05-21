require "pry"
require "time"

class Event

    attr_accessor :start_date
    attr_accessor :duration
    attr_accessor :title
    attr_accessor :attendees

    def initialize(start_date_to_save, duration_to_save, title_to_save = "")
        @start_date = Time.parse(start_date_to_save)
        @duration = duration_to_save
        @title = title_to_save
        # @attendees = attendees_to_save
    end
end

binding.pry
puts "end of file"