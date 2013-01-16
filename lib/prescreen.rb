
module Prescreen

  class TimeCalculator
  	
  	def add_minutes(time_string, minutes_string)
  		time = CustomTime.new(time_string)
  		set_meridiem time, minutes_string.to_i
  		time.minutes += minutes_string.to_i
  		if (time.minutes > 59)
  			time.hours += time.minutes / 60
  			time.minutes = time.minutes % 60
  		end
  		if (time.hours > 12)
  			time.hours -= 12
  		end
  		time.to_s
  	end

  	def set_meridiem(time, minutes_to_add)
  		total_minutes = time.minutes + minutes_to_add
  		hours_to_add = total_minutes / 60
  		total_hours = time.hours + hours_to_add
  		if ((total_hours / 12) % 2 > 0)
  			time.meridiem = time.meridiem == "AM" ? "PM" : "AM"
  		end
  	end
  	
  	#custom time class built from scratch for this program
  	class CustomTime
  		attr_accessor :hours
  		attr_accessor :minutes
  		attr_accessor :meridiem

  		def initialize(time_string)
  			unless valid? time_string
  				raise ArgumentError, "#{time_string} is not a valid time string"
  			end
  			parse time_string
  		end

  		def valid?(string)
  			string.match /^\d{1,2}:\d\d\s([aA][mM]|[pP][mM])/
  		end

  		def parse(string)
  			@hours = string[/^\d{1,2}:/].chomp(':').to_i
  			@minutes = string[/:\d\d/][1..-1].to_i
  			@meridiem = string[/([aA][mM]|[pP][mM])/].upcase
  		end

  		def to_s
  			minutes = "%02d" % @minutes
  			"#{@hours}:#{minutes} #{@meridiem}"
  		end
  	end
  
  end
end
